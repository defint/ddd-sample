// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FormBlocEventTearOff {
  const _$FormBlocEventTearOff();

  Initialized initialized(Counter counter) {
    return Initialized(
      counter,
    );
  }

  ChangeName changeName(String name) {
    return ChangeName(
      name,
    );
  }

  ChangeDoubledName changeDoubledName(String doubledName) {
    return ChangeDoubledName(
      doubledName,
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
    @required Result initialized(Counter counter),
    @required Result changeName(String name),
    @required Result changeDoubledName(String doubledName),
    @required Result submit(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Counter counter),
    Result changeName(String name),
    Result changeDoubledName(String doubledName),
    Result submit(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(Initialized value),
    @required Result changeName(ChangeName value),
    @required Result changeDoubledName(ChangeDoubledName value),
    @required Result submit(Submit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result changeName(ChangeName value),
    Result changeDoubledName(ChangeDoubledName value),
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

abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
  $Res call({Counter counter});
}

class _$InitializedCopyWithImpl<$Res> extends _$FormBlocEventCopyWithImpl<$Res>
    implements $InitializedCopyWith<$Res> {
  _$InitializedCopyWithImpl(
      Initialized _value, $Res Function(Initialized) _then)
      : super(_value, (v) => _then(v as Initialized));

  @override
  Initialized get _value => super._value as Initialized;

  @override
  $Res call({
    Object counter = freezed,
  }) {
    return _then(Initialized(
      counter == freezed ? _value.counter : counter as Counter,
    ));
  }
}

class _$Initialized implements Initialized {
  const _$Initialized(this.counter) : assert(counter != null);

  @override
  final Counter counter;

  @override
  String toString() {
    return 'FormBlocEvent.initialized(counter: $counter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initialized &&
            (identical(other.counter, counter) ||
                const DeepCollectionEquality().equals(other.counter, counter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(counter);

  @override
  $InitializedCopyWith<Initialized> get copyWith =>
      _$InitializedCopyWithImpl<Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Counter counter),
    @required Result changeName(String name),
    @required Result changeDoubledName(String doubledName),
    @required Result submit(),
  }) {
    assert(initialized != null);
    assert(changeName != null);
    assert(changeDoubledName != null);
    assert(submit != null);
    return initialized(counter);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Counter counter),
    Result changeName(String name),
    Result changeDoubledName(String doubledName),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(counter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(Initialized value),
    @required Result changeName(ChangeName value),
    @required Result changeDoubledName(ChangeDoubledName value),
    @required Result submit(Submit value),
  }) {
    assert(initialized != null);
    assert(changeName != null);
    assert(changeDoubledName != null);
    assert(submit != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result changeName(ChangeName value),
    Result changeDoubledName(ChangeDoubledName value),
    Result submit(Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements FormBlocEvent {
  const factory Initialized(Counter counter) = _$Initialized;

  Counter get counter;
  $InitializedCopyWith<Initialized> get copyWith;
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
    @required Result initialized(Counter counter),
    @required Result changeName(String name),
    @required Result changeDoubledName(String doubledName),
    @required Result submit(),
  }) {
    assert(initialized != null);
    assert(changeName != null);
    assert(changeDoubledName != null);
    assert(submit != null);
    return changeName(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Counter counter),
    Result changeName(String name),
    Result changeDoubledName(String doubledName),
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
    @required Result initialized(Initialized value),
    @required Result changeName(ChangeName value),
    @required Result changeDoubledName(ChangeDoubledName value),
    @required Result submit(Submit value),
  }) {
    assert(initialized != null);
    assert(changeName != null);
    assert(changeDoubledName != null);
    assert(submit != null);
    return changeName(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result changeName(ChangeName value),
    Result changeDoubledName(ChangeDoubledName value),
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

abstract class $ChangeDoubledNameCopyWith<$Res> {
  factory $ChangeDoubledNameCopyWith(
          ChangeDoubledName value, $Res Function(ChangeDoubledName) then) =
      _$ChangeDoubledNameCopyWithImpl<$Res>;
  $Res call({String doubledName});
}

class _$ChangeDoubledNameCopyWithImpl<$Res>
    extends _$FormBlocEventCopyWithImpl<$Res>
    implements $ChangeDoubledNameCopyWith<$Res> {
  _$ChangeDoubledNameCopyWithImpl(
      ChangeDoubledName _value, $Res Function(ChangeDoubledName) _then)
      : super(_value, (v) => _then(v as ChangeDoubledName));

  @override
  ChangeDoubledName get _value => super._value as ChangeDoubledName;

  @override
  $Res call({
    Object doubledName = freezed,
  }) {
    return _then(ChangeDoubledName(
      doubledName == freezed ? _value.doubledName : doubledName as String,
    ));
  }
}

class _$ChangeDoubledName implements ChangeDoubledName {
  const _$ChangeDoubledName(this.doubledName) : assert(doubledName != null);

  @override
  final String doubledName;

  @override
  String toString() {
    return 'FormBlocEvent.changeDoubledName(doubledName: $doubledName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeDoubledName &&
            (identical(other.doubledName, doubledName) ||
                const DeepCollectionEquality()
                    .equals(other.doubledName, doubledName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(doubledName);

  @override
  $ChangeDoubledNameCopyWith<ChangeDoubledName> get copyWith =>
      _$ChangeDoubledNameCopyWithImpl<ChangeDoubledName>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Counter counter),
    @required Result changeName(String name),
    @required Result changeDoubledName(String doubledName),
    @required Result submit(),
  }) {
    assert(initialized != null);
    assert(changeName != null);
    assert(changeDoubledName != null);
    assert(submit != null);
    return changeDoubledName(doubledName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Counter counter),
    Result changeName(String name),
    Result changeDoubledName(String doubledName),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeDoubledName != null) {
      return changeDoubledName(doubledName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(Initialized value),
    @required Result changeName(ChangeName value),
    @required Result changeDoubledName(ChangeDoubledName value),
    @required Result submit(Submit value),
  }) {
    assert(initialized != null);
    assert(changeName != null);
    assert(changeDoubledName != null);
    assert(submit != null);
    return changeDoubledName(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result changeName(ChangeName value),
    Result changeDoubledName(ChangeDoubledName value),
    Result submit(Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeDoubledName != null) {
      return changeDoubledName(this);
    }
    return orElse();
  }
}

abstract class ChangeDoubledName implements FormBlocEvent {
  const factory ChangeDoubledName(String doubledName) = _$ChangeDoubledName;

  String get doubledName;
  $ChangeDoubledNameCopyWith<ChangeDoubledName> get copyWith;
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
    @required Result initialized(Counter counter),
    @required Result changeName(String name),
    @required Result changeDoubledName(String doubledName),
    @required Result submit(),
  }) {
    assert(initialized != null);
    assert(changeName != null);
    assert(changeDoubledName != null);
    assert(submit != null);
    return submit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Counter counter),
    Result changeName(String name),
    Result changeDoubledName(String doubledName),
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
    @required Result initialized(Initialized value),
    @required Result changeName(ChangeName value),
    @required Result changeDoubledName(ChangeDoubledName value),
    @required Result submit(Submit value),
  }) {
    assert(initialized != null);
    assert(changeName != null);
    assert(changeDoubledName != null);
    assert(submit != null);
    return submit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result changeName(ChangeName value),
    Result changeDoubledName(ChangeDoubledName value),
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

  _FormState call(
      {@required Name name,
      @required Name doubledName,
      @required ApplicationStatus applicationStatus,
      @required Option<Either<BackendFailure, Unit>> result}) {
    return _FormState(
      name: name,
      doubledName: doubledName,
      applicationStatus: applicationStatus,
      result: result,
    );
  }
}

// ignore: unused_element
const $FormBlocState = _$FormBlocStateTearOff();

mixin _$FormBlocState {
  Name get name;
  Name get doubledName;
  ApplicationStatus get applicationStatus;
  Option<Either<BackendFailure, Unit>> get result;

  $FormBlocStateCopyWith<FormBlocState> get copyWith;
}

abstract class $FormBlocStateCopyWith<$Res> {
  factory $FormBlocStateCopyWith(
          FormBlocState value, $Res Function(FormBlocState) then) =
      _$FormBlocStateCopyWithImpl<$Res>;
  $Res call(
      {Name name,
      Name doubledName,
      ApplicationStatus applicationStatus,
      Option<Either<BackendFailure, Unit>> result});

  $ApplicationStatusCopyWith<$Res> get applicationStatus;
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
    Object doubledName = freezed,
    Object applicationStatus = freezed,
    Object result = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as Name,
      doubledName:
          doubledName == freezed ? _value.doubledName : doubledName as Name,
      applicationStatus: applicationStatus == freezed
          ? _value.applicationStatus
          : applicationStatus as ApplicationStatus,
      result: result == freezed
          ? _value.result
          : result as Option<Either<BackendFailure, Unit>>,
    ));
  }

  @override
  $ApplicationStatusCopyWith<$Res> get applicationStatus {
    if (_value.applicationStatus == null) {
      return null;
    }
    return $ApplicationStatusCopyWith<$Res>(_value.applicationStatus, (value) {
      return _then(_value.copyWith(applicationStatus: value));
    });
  }
}

abstract class _$FormStateCopyWith<$Res>
    implements $FormBlocStateCopyWith<$Res> {
  factory _$FormStateCopyWith(
          _FormState value, $Res Function(_FormState) then) =
      __$FormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Name name,
      Name doubledName,
      ApplicationStatus applicationStatus,
      Option<Either<BackendFailure, Unit>> result});

  @override
  $ApplicationStatusCopyWith<$Res> get applicationStatus;
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
    Object doubledName = freezed,
    Object applicationStatus = freezed,
    Object result = freezed,
  }) {
    return _then(_FormState(
      name: name == freezed ? _value.name : name as Name,
      doubledName:
          doubledName == freezed ? _value.doubledName : doubledName as Name,
      applicationStatus: applicationStatus == freezed
          ? _value.applicationStatus
          : applicationStatus as ApplicationStatus,
      result: result == freezed
          ? _value.result
          : result as Option<Either<BackendFailure, Unit>>,
    ));
  }
}

class _$_FormState implements _FormState {
  const _$_FormState(
      {@required this.name,
      @required this.doubledName,
      @required this.applicationStatus,
      @required this.result})
      : assert(name != null),
        assert(doubledName != null),
        assert(applicationStatus != null),
        assert(result != null);

  @override
  final Name name;
  @override
  final Name doubledName;
  @override
  final ApplicationStatus applicationStatus;
  @override
  final Option<Either<BackendFailure, Unit>> result;

  @override
  String toString() {
    return 'FormBlocState(name: $name, doubledName: $doubledName, applicationStatus: $applicationStatus, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FormState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.doubledName, doubledName) ||
                const DeepCollectionEquality()
                    .equals(other.doubledName, doubledName)) &&
            (identical(other.applicationStatus, applicationStatus) ||
                const DeepCollectionEquality()
                    .equals(other.applicationStatus, applicationStatus)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(doubledName) ^
      const DeepCollectionEquality().hash(applicationStatus) ^
      const DeepCollectionEquality().hash(result);

  @override
  _$FormStateCopyWith<_FormState> get copyWith =>
      __$FormStateCopyWithImpl<_FormState>(this, _$identity);
}

abstract class _FormState implements FormBlocState {
  const factory _FormState(
      {@required Name name,
      @required Name doubledName,
      @required ApplicationStatus applicationStatus,
      @required Option<Either<BackendFailure, Unit>> result}) = _$_FormState;

  @override
  Name get name;
  @override
  Name get doubledName;
  @override
  ApplicationStatus get applicationStatus;
  @override
  Option<Either<BackendFailure, Unit>> get result;
  @override
  _$FormStateCopyWith<_FormState> get copyWith;
}
