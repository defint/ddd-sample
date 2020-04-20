import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web_form/domain/core/value_failure.dart';

abstract class IValidationObject {
  bool isValid();
}

@immutable
abstract class ValueObject<T> implements IValidationObject {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  @override
  bool isValid() {
    return value.isRight();
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
