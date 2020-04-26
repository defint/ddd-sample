import 'package:dartz/dartz.dart';
import 'package:web_form/domain/core/validations.dart';
import 'package:web_form/domain/core/value_failure.dart';

Either<ValueFailure<int>, int> validateCounter(int input) =>
    validate(input, [ValidatorPositiveNumber()]);

Either<ValueFailure<String>, String> validateName(String input) =>
    validate(input, [ValidatorEmptyString(), ValidatorLengthMax(length: 8)]);
