import 'package:dartz/dartz.dart';
import 'package:web_form/domain/core/validations.dart';
import 'package:web_form/domain/core/value_failure.dart';

Either<ValueFailure<String>, String> validateName(
  String input, {
  int maxLength = 8,
  String notEqual,
}) =>
    validate(input, [
      ValidatorEmptyString(),
      ValidatorLengthMax(length: maxLength),
      if (notEqual != null) ValidatorNotEqual<String>(checker: notEqual)
    ]);
