part of 'form_bloc.dart';

@freezed
abstract class FormBlocState with _$FormBlocState {
  const factory FormBlocState({
    @required Name name,
    @required Name doubledName,
    @required ApplicationStatus applicationStatus,
    @required Option<Either<BackendFailure, Unit>> result,
  }) = _FormState;

  factory FormBlocState.initial() => FormBlocState(
        name: Name(''),
        doubledName: Name(''),
        applicationStatus: ApplicationStatus.formInitial(),
        result: none(),
      );
}
