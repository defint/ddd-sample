// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  PositiveNumber<T> positiveNumber<T>({@required T failedValue}) {
    return PositiveNumber<T>(
      failedValue: failedValue,
    );
  }
}

// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

mixin _$ValueFailure<T> {
  T get failedValue;

  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith;
}

abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

abstract class $PositiveNumberCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $PositiveNumberCopyWith(
          PositiveNumber<T> value, $Res Function(PositiveNumber<T>) then) =
      _$PositiveNumberCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$PositiveNumberCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $PositiveNumberCopyWith<T, $Res> {
  _$PositiveNumberCopyWithImpl(
      PositiveNumber<T> _value, $Res Function(PositiveNumber<T>) _then)
      : super(_value, (v) => _then(v as PositiveNumber<T>));

  @override
  PositiveNumber<T> get _value => super._value as PositiveNumber<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(PositiveNumber<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$PositiveNumber<T> implements PositiveNumber<T> {
  const _$PositiveNumber({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.positiveNumber(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PositiveNumber<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $PositiveNumberCopyWith<T, PositiveNumber<T>> get copyWith =>
      _$PositiveNumberCopyWithImpl<T, PositiveNumber<T>>(this, _$identity);
}

abstract class PositiveNumber<T> implements ValueFailure<T> {
  const factory PositiveNumber({@required T failedValue}) = _$PositiveNumber<T>;

  @override
  T get failedValue;
  @override
  $PositiveNumberCopyWith<T, PositiveNumber<T>> get copyWith;
}
