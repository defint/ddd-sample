import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.positiveNumber({
    @required T failedValue,
  }) = PositiveNumber<T>;

  const factory ValueFailure.emptyString({
    @required T failedValue,
  }) = EmptyString<T>;

  const factory ValueFailure.lengthMax({
    @required T failedValue,
    @required int length,
  }) = LengthMax<T>;

  const factory ValueFailure.notEqual({
    @required T failedValue,
    @required T checker,
  }) = NotEqual<T>;
}
