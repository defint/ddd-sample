import 'package:dartz/dartz.dart';
import 'package:web_form/domain/core/value_failure.dart';

abstract class IValidator<T> {
  Option<ValueFailure> validate(T value);
}

Either<ValueFailure<T>, T> validate<T>(value, List<IValidator> validators) {
  var checkedValidators = validators.map((e) => e.validate(value));

  Option<ValueFailure<T>> activeFailure = checkedValidators.firstWhere(
      (element) => element.isSome(),
      orElse: () => none<ValueFailure<int>>());

  return activeFailure.fold(
      () => right(value), (valueFailure) => left(valueFailure));
}

class ValidatorPositiveNumber implements IValidator<int> {
  Option<ValueFailure<int>> validate(value) {
    return option(value < 0, ValueFailure.positiveNumber(failedValue: value));
  }
}
