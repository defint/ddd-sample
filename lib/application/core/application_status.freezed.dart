// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'application_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ApplicationStatusTearOff {
  const _$ApplicationStatusTearOff();

  Normal normal() {
    return const Normal();
  }

  Loading loading() {
    return const Loading();
  }
}

// ignore: unused_element
const $ApplicationStatus = _$ApplicationStatusTearOff();

mixin _$ApplicationStatus {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result normal(),
    @required Result loading(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result normal(),
    Result loading(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result normal(Normal value),
    @required Result loading(Loading value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result normal(Normal value),
    Result loading(Loading value),
    @required Result orElse(),
  });
}

abstract class $ApplicationStatusCopyWith<$Res> {
  factory $ApplicationStatusCopyWith(
          ApplicationStatus value, $Res Function(ApplicationStatus) then) =
      _$ApplicationStatusCopyWithImpl<$Res>;
}

class _$ApplicationStatusCopyWithImpl<$Res>
    implements $ApplicationStatusCopyWith<$Res> {
  _$ApplicationStatusCopyWithImpl(this._value, this._then);

  final ApplicationStatus _value;
  // ignore: unused_field
  final $Res Function(ApplicationStatus) _then;
}

abstract class $NormalCopyWith<$Res> {
  factory $NormalCopyWith(Normal value, $Res Function(Normal) then) =
      _$NormalCopyWithImpl<$Res>;
}

class _$NormalCopyWithImpl<$Res> extends _$ApplicationStatusCopyWithImpl<$Res>
    implements $NormalCopyWith<$Res> {
  _$NormalCopyWithImpl(Normal _value, $Res Function(Normal) _then)
      : super(_value, (v) => _then(v as Normal));

  @override
  Normal get _value => super._value as Normal;
}

class _$Normal implements Normal {
  const _$Normal();

  @override
  String toString() {
    return 'ApplicationStatus.normal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Normal);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result normal(),
    @required Result loading(),
  }) {
    assert(normal != null);
    assert(loading != null);
    return normal();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result normal(),
    Result loading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (normal != null) {
      return normal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result normal(Normal value),
    @required Result loading(Loading value),
  }) {
    assert(normal != null);
    assert(loading != null);
    return normal(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result normal(Normal value),
    Result loading(Loading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }
}

abstract class Normal implements ApplicationStatus {
  const factory Normal() = _$Normal;
}

abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

class _$LoadingCopyWithImpl<$Res> extends _$ApplicationStatusCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'ApplicationStatus.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result normal(),
    @required Result loading(),
  }) {
    assert(normal != null);
    assert(loading != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result normal(),
    Result loading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result normal(Normal value),
    @required Result loading(Loading value),
  }) {
    assert(normal != null);
    assert(loading != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result normal(Normal value),
    Result loading(Loading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ApplicationStatus {
  const factory Loading() = _$Loading;
}
