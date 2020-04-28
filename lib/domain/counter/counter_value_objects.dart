import 'package:dartz/dartz.dart';
import 'package:web_form/domain/core/value_failure.dart';
import 'package:web_form/domain/core/value_object.dart';
import 'package:web_form/domain/counter/counter_validations.dart';

class Counter extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory Counter(int value) {
    assert(value != null);

    return Counter._(validateCounter(value));
  }

  const Counter._(this.value);
}

class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Name(String value, {String notEqual}) {
    assert(value != null);

    return Name._(validateName(value, notEqual: notEqual));
  }

  const Name._(this.value);
}

class Position extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Position(String value, {String notEqual}) {
    assert(value != null);

    return Position._(right(value));
  }

  factory Position.withCustomError(String value, {String customError}) {
    assert(value != null);

    return Position._(left(ValueFailure.customError(
      failedValue: value,
      error: customError,
    )));
  }

  const Position._(this.value);
}
