import 'package:dartz/dartz.dart';
import 'package:web_form/domain/core/value_failure.dart';

abstract class IValidator<T> {
  Option<ValueFailure<T>> validate(T value);
}

Either<ValueFailure<T>, T> validate<T>(
  T value,
  List<IValidator<T>> validators,
) {
  final checkedValidators = validators.map((e) => e.validate(value));

  final activeFailure = checkedValidators.firstWhere(
    (element) => element.isSome(),
    orElse: () => none<ValueFailure<T>>(),
  );

  return activeFailure.fold(
      () => right(value), (valueFailure) => left(valueFailure));
}

class ValidatorPositiveNumber implements IValidator<int> {
  Option<ValueFailure<int>> validate(value) {
    return option(value < 0, ValueFailure.positiveNumber(failedValue: value));
  }
}

class ValidatorEmptyString implements IValidator<String> {
  @override
  Option<ValueFailure<String>> validate(String value) {
    return option(value == '', ValueFailure.emptyString(failedValue: value));
  }
}

class ValidatorLengthMax implements IValidator<String> {
  final int length;

  ValidatorLengthMax({this.length});

  @override
  Option<ValueFailure<String>> validate(String value) {
    return option(value.length > length,
        ValueFailure.lengthMax(failedValue: value, length: length));
  }
}
