part of 'form_bloc.dart';

@freezed
abstract class FormBlocState with _$FormBlocState {
  const factory FormBlocState({
    @required Name name,
  }) = _FormState;

  factory FormBlocState.initial() => FormBlocState(name: Name(''));
}
