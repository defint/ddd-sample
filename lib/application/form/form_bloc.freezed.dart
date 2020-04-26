// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FormBlocEventTearOff {
  const _$FormBlocEventTearOff();

  ChangeName changeName(String name) {
    return ChangeName(
      name,
    );
  }

  Submit submit() {
    return const Submit();
  }
}

// ignore: unused_element
const $FormBlocEvent = _$FormBlocEventTearOff();

mixin _$FormBlocEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeName(String name),
    @required Result submit(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeName(String name),
    Result submit(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeName(ChangeName value),
    @required Result submit(Submit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeName(ChangeName value),
    Result submit(Submit value),
    @required Result orElse(),
  });
}

abstract class $FormBlocEventCopyWith<$Res> {
  factory $FormBlocEventCopyWith(
          FormBlocEvent value, $Res Function(FormBlocEvent) then) =
      _$FormBlocEventCopyWithImpl<$Res>;
}

class _$FormBlocEventCopyWithImpl<$Res>
    implements $FormBlocEventCopyWith<$Res> {
  _$FormBlocEventCopyWithImpl(this._value, this._then);

  final FormBlocEvent _value;
  // ignore: unused_field
  final $Res Function(FormBlocEvent) _then;
}

abstract class $ChangeNameCopyWith<$Res> {
  factory $ChangeNameCopyWith(
          ChangeName value, $Res Function(ChangeName) then) =
      _$ChangeNameCopyWithImpl<$Res>;
  $Res call({String name});
}

class _$ChangeNameCopyWithImpl<$Res> extends _$FormBlocEventCopyWithImpl<$Res>
    implements $ChangeNameCopyWith<$Res> {
  _$ChangeNameCopyWithImpl(ChangeName _value, $Res Function(ChangeName) _then)
      : super(_value, (v) => _then(v as ChangeName));

  @override
  ChangeName get _value => super._value as ChangeName;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(ChangeName(
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$ChangeName implements ChangeName {
  const _$ChangeName(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'FormBlocEvent.changeName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeName &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  $ChangeNameCopyWith<ChangeName> get copyWith =>
      _$ChangeNameCopyWithImpl<ChangeName>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeName(String name),
    @required Result submit(),
  }) {
    assert(changeName != null);
    assert(submit != null);
    return changeName(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeName(String name),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeName != null) {
      return changeName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeName(ChangeName value),
    @required Result submit(Submit value),
  }) {
    assert(changeName != null);
    assert(submit != null);
    return changeName(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeName(ChangeName value),
    Result submit(Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeName != null) {
      return changeName(this);
    }
    return orElse();
  }
}

abstract class ChangeName implements FormBlocEvent {
  const factory ChangeName(String name) = _$ChangeName;

  String get name;
  $ChangeNameCopyWith<ChangeName> get copyWith;
}

abstract class $SubmitCopyWith<$Res> {
  factory $SubmitCopyWith(Submit value, $Res Function(Submit) then) =
      _$SubmitCopyWithImpl<$Res>;
}

class _$SubmitCopyWithImpl<$Res> extends _$FormBlocEventCopyWithImpl<$Res>
    implements $SubmitCopyWith<$Res> {
  _$SubmitCopyWithImpl(Submit _value, $Res Function(Submit) _then)
      : super(_value, (v) => _then(v as Submit));

  @override
  Submit get _value => super._value as Submit;
}

class _$Submit implements Submit {
  const _$Submit();

  @override
  String toString() {
    return 'FormBlocEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Submit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeName(String name),
    @required Result submit(),
  }) {
    assert(changeName != null);
    assert(submit != null);
    return submit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeName(String name),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeName(ChangeName value),
    @required Result submit(Submit value),
  }) {
    assert(changeName != null);
    assert(submit != null);
    return submit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeName(ChangeName value),
    Result submit(Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class Submit implements FormBlocEvent {
  const factory Submit() = _$Submit;
}

class _$FormBlocStateTearOff {
  const _$FormBlocStateTearOff();

  _FormState call({@required Name name}) {
    return _FormState(
      name: name,
    );
  }
}

// ignore: unused_element
const $FormBlocState = _$FormBlocStateTearOff();

mixin _$FormBlocState {
  Name get name;

  $FormBlocStateCopyWith<FormBlocState> get copyWith;
}

abstract class $FormBlocStateCopyWith<$Res> {
  factory $FormBlocStateCopyWith(
          FormBlocState value, $Res Function(FormBlocState) then) =
      _$FormBlocStateCopyWithImpl<$Res>;
  $Res call({Name name});
}

class _$FormBlocStateCopyWithImpl<$Res>
    implements $FormBlocStateCopyWith<$Res> {
  _$FormBlocStateCopyWithImpl(this._value, this._then);

  final FormBlocState _value;
  // ignore: unused_field
  final $Res Function(FormBlocState) _then;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as Name,
    ));
  }
}

abstract class _$FormStateCopyWith<$Res>
    implements $FormBlocStateCopyWith<$Res> {
  factory _$FormStateCopyWith(
          _FormState value, $Res Function(_FormState) then) =
      __$FormStateCopyWithImpl<$Res>;
  @override
  $Res call({Name name});
}

class __$FormStateCopyWithImpl<$Res> extends _$FormBlocStateCopyWithImpl<$Res>
    implements _$FormStateCopyWith<$Res> {
  __$FormStateCopyWithImpl(_FormState _value, $Res Function(_FormState) _then)
      : super(_value, (v) => _then(v as _FormState));

  @override
  _FormState get _value => super._value as _FormState;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_FormState(
      name: name == freezed ? _value.name : name as Name,
    ));
  }
}

class _$_FormState implements _FormState {
  const _$_FormState({@required this.name}) : assert(name != null);

  @override
  final Name name;

  @override
  String toString() {
    return 'FormBlocState(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FormState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$FormStateCopyWith<_FormState> get copyWith =>
      __$FormStateCopyWithImpl<_FormState>(this, _$identity);
}

abstract class _FormState implements FormBlocState {
  const factory _FormState({@required Name name}) = _$_FormState;

  @override
  Name get name;
  @override
  _$FormStateCopyWith<_FormState> get copyWith;
}
