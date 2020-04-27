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

  EmptyString<T> emptyString<T>({@required T failedValue}) {
    return EmptyString<T>(
      failedValue: failedValue,
    );
  }

  LengthMax<T> lengthMax<T>({@required T failedValue, @required int length}) {
    return LengthMax<T>(
      failedValue: failedValue,
      length: length,
    );
  }

  NotEqual<T> notEqual<T>({@required T failedValue, @required T checker}) {
    return NotEqual<T>(
      failedValue: failedValue,
      checker: checker,
    );
  }
}

// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

mixin _$ValueFailure<T> {
  T get failedValue;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result positiveNumber(T failedValue),
    @required Result emptyString(T failedValue),
    @required Result lengthMax(T failedValue, int length),
    @required Result notEqual(T failedValue, T checker),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result positiveNumber(T failedValue),
    Result emptyString(T failedValue),
    Result lengthMax(T failedValue, int length),
    Result notEqual(T failedValue, T checker),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result positiveNumber(PositiveNumber<T> value),
    @required Result emptyString(EmptyString<T> value),
    @required Result lengthMax(LengthMax<T> value),
    @required Result notEqual(NotEqual<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result positiveNumber(PositiveNumber<T> value),
    Result emptyString(EmptyString<T> value),
    Result lengthMax(LengthMax<T> value),
    Result notEqual(NotEqual<T> value),
    @required Result orElse(),
  });

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

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result positiveNumber(T failedValue),
    @required Result emptyString(T failedValue),
    @required Result lengthMax(T failedValue, int length),
    @required Result notEqual(T failedValue, T checker),
  }) {
    assert(positiveNumber != null);
    assert(emptyString != null);
    assert(lengthMax != null);
    assert(notEqual != null);
    return positiveNumber(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result positiveNumber(T failedValue),
    Result emptyString(T failedValue),
    Result lengthMax(T failedValue, int length),
    Result notEqual(T failedValue, T checker),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (positiveNumber != null) {
      return positiveNumber(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result positiveNumber(PositiveNumber<T> value),
    @required Result emptyString(EmptyString<T> value),
    @required Result lengthMax(LengthMax<T> value),
    @required Result notEqual(NotEqual<T> value),
  }) {
    assert(positiveNumber != null);
    assert(emptyString != null);
    assert(lengthMax != null);
    assert(notEqual != null);
    return positiveNumber(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result positiveNumber(PositiveNumber<T> value),
    Result emptyString(EmptyString<T> value),
    Result lengthMax(LengthMax<T> value),
    Result notEqual(NotEqual<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (positiveNumber != null) {
      return positiveNumber(this);
    }
    return orElse();
  }
}

abstract class PositiveNumber<T> implements ValueFailure<T> {
  const factory PositiveNumber({@required T failedValue}) = _$PositiveNumber<T>;

  @override
  T get failedValue;
  @override
  $PositiveNumberCopyWith<T, PositiveNumber<T>> get copyWith;
}

abstract class $EmptyStringCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptyStringCopyWith(
          EmptyString<T> value, $Res Function(EmptyString<T>) then) =
      _$EmptyStringCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$EmptyStringCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyStringCopyWith<T, $Res> {
  _$EmptyStringCopyWithImpl(
      EmptyString<T> _value, $Res Function(EmptyString<T>) _then)
      : super(_value, (v) => _then(v as EmptyString<T>));

  @override
  EmptyString<T> get _value => super._value as EmptyString<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(EmptyString<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$EmptyString<T> implements EmptyString<T> {
  const _$EmptyString({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.emptyString(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmptyString<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $EmptyStringCopyWith<T, EmptyString<T>> get copyWith =>
      _$EmptyStringCopyWithImpl<T, EmptyString<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result positiveNumber(T failedValue),
    @required Result emptyString(T failedValue),
    @required Result lengthMax(T failedValue, int length),
    @required Result notEqual(T failedValue, T checker),
  }) {
    assert(positiveNumber != null);
    assert(emptyString != null);
    assert(lengthMax != null);
    assert(notEqual != null);
    return emptyString(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result positiveNumber(T failedValue),
    Result emptyString(T failedValue),
    Result lengthMax(T failedValue, int length),
    Result notEqual(T failedValue, T checker),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emptyString != null) {
      return emptyString(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result positiveNumber(PositiveNumber<T> value),
    @required Result emptyString(EmptyString<T> value),
    @required Result lengthMax(LengthMax<T> value),
    @required Result notEqual(NotEqual<T> value),
  }) {
    assert(positiveNumber != null);
    assert(emptyString != null);
    assert(lengthMax != null);
    assert(notEqual != null);
    return emptyString(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result positiveNumber(PositiveNumber<T> value),
    Result emptyString(EmptyString<T> value),
    Result lengthMax(LengthMax<T> value),
    Result notEqual(NotEqual<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emptyString != null) {
      return emptyString(this);
    }
    return orElse();
  }
}

abstract class EmptyString<T> implements ValueFailure<T> {
  const factory EmptyString({@required T failedValue}) = _$EmptyString<T>;

  @override
  T get failedValue;
  @override
  $EmptyStringCopyWith<T, EmptyString<T>> get copyWith;
}

abstract class $LengthMaxCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $LengthMaxCopyWith(
          LengthMax<T> value, $Res Function(LengthMax<T>) then) =
      _$LengthMaxCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int length});
}

class _$LengthMaxCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $LengthMaxCopyWith<T, $Res> {
  _$LengthMaxCopyWithImpl(
      LengthMax<T> _value, $Res Function(LengthMax<T>) _then)
      : super(_value, (v) => _then(v as LengthMax<T>));

  @override
  LengthMax<T> get _value => super._value as LengthMax<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object length = freezed,
  }) {
    return _then(LengthMax<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      length: length == freezed ? _value.length : length as int,
    ));
  }
}

class _$LengthMax<T> implements LengthMax<T> {
  const _$LengthMax({@required this.failedValue, @required this.length})
      : assert(failedValue != null),
        assert(length != null);

  @override
  final T failedValue;
  @override
  final int length;

  @override
  String toString() {
    return 'ValueFailure<$T>.lengthMax(failedValue: $failedValue, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LengthMax<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.length, length) ||
                const DeepCollectionEquality().equals(other.length, length)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(length);

  @override
  $LengthMaxCopyWith<T, LengthMax<T>> get copyWith =>
      _$LengthMaxCopyWithImpl<T, LengthMax<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result positiveNumber(T failedValue),
    @required Result emptyString(T failedValue),
    @required Result lengthMax(T failedValue, int length),
    @required Result notEqual(T failedValue, T checker),
  }) {
    assert(positiveNumber != null);
    assert(emptyString != null);
    assert(lengthMax != null);
    assert(notEqual != null);
    return lengthMax(failedValue, length);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result positiveNumber(T failedValue),
    Result emptyString(T failedValue),
    Result lengthMax(T failedValue, int length),
    Result notEqual(T failedValue, T checker),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lengthMax != null) {
      return lengthMax(failedValue, length);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result positiveNumber(PositiveNumber<T> value),
    @required Result emptyString(EmptyString<T> value),
    @required Result lengthMax(LengthMax<T> value),
    @required Result notEqual(NotEqual<T> value),
  }) {
    assert(positiveNumber != null);
    assert(emptyString != null);
    assert(lengthMax != null);
    assert(notEqual != null);
    return lengthMax(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result positiveNumber(PositiveNumber<T> value),
    Result emptyString(EmptyString<T> value),
    Result lengthMax(LengthMax<T> value),
    Result notEqual(NotEqual<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lengthMax != null) {
      return lengthMax(this);
    }
    return orElse();
  }
}

abstract class LengthMax<T> implements ValueFailure<T> {
  const factory LengthMax({@required T failedValue, @required int length}) =
      _$LengthMax<T>;

  @override
  T get failedValue;
  int get length;
  @override
  $LengthMaxCopyWith<T, LengthMax<T>> get copyWith;
}

abstract class $NotEqualCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $NotEqualCopyWith(
          NotEqual<T> value, $Res Function(NotEqual<T>) then) =
      _$NotEqualCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, T checker});
}

class _$NotEqualCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NotEqualCopyWith<T, $Res> {
  _$NotEqualCopyWithImpl(NotEqual<T> _value, $Res Function(NotEqual<T>) _then)
      : super(_value, (v) => _then(v as NotEqual<T>));

  @override
  NotEqual<T> get _value => super._value as NotEqual<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object checker = freezed,
  }) {
    return _then(NotEqual<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      checker: checker == freezed ? _value.checker : checker as T,
    ));
  }
}

class _$NotEqual<T> implements NotEqual<T> {
  const _$NotEqual({@required this.failedValue, @required this.checker})
      : assert(failedValue != null),
        assert(checker != null);

  @override
  final T failedValue;
  @override
  final T checker;

  @override
  String toString() {
    return 'ValueFailure<$T>.notEqual(failedValue: $failedValue, checker: $checker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotEqual<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.checker, checker) ||
                const DeepCollectionEquality().equals(other.checker, checker)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(checker);

  @override
  $NotEqualCopyWith<T, NotEqual<T>> get copyWith =>
      _$NotEqualCopyWithImpl<T, NotEqual<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result positiveNumber(T failedValue),
    @required Result emptyString(T failedValue),
    @required Result lengthMax(T failedValue, int length),
    @required Result notEqual(T failedValue, T checker),
  }) {
    assert(positiveNumber != null);
    assert(emptyString != null);
    assert(lengthMax != null);
    assert(notEqual != null);
    return notEqual(failedValue, checker);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result positiveNumber(T failedValue),
    Result emptyString(T failedValue),
    Result lengthMax(T failedValue, int length),
    Result notEqual(T failedValue, T checker),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notEqual != null) {
      return notEqual(failedValue, checker);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result positiveNumber(PositiveNumber<T> value),
    @required Result emptyString(EmptyString<T> value),
    @required Result lengthMax(LengthMax<T> value),
    @required Result notEqual(NotEqual<T> value),
  }) {
    assert(positiveNumber != null);
    assert(emptyString != null);
    assert(lengthMax != null);
    assert(notEqual != null);
    return notEqual(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result positiveNumber(PositiveNumber<T> value),
    Result emptyString(EmptyString<T> value),
    Result lengthMax(LengthMax<T> value),
    Result notEqual(NotEqual<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notEqual != null) {
      return notEqual(this);
    }
    return orElse();
  }
}

abstract class NotEqual<T> implements ValueFailure<T> {
  const factory NotEqual({@required T failedValue, @required T checker}) =
      _$NotEqual<T>;

  @override
  T get failedValue;
  T get checker;
  @override
  $NotEqualCopyWith<T, NotEqual<T>> get copyWith;
}
