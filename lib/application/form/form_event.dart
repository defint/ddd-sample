part of 'form_bloc.dart';

@freezed
abstract class FormBlocEvent with _$FormBlocEvent {
  const factory FormBlocEvent.initialized(Counter counter) = Initialized;
  const factory FormBlocEvent.changeName(String name) = ChangeName;
  const factory FormBlocEvent.changeDoubledName(String doubledName) =
      ChangeDoubledName;
  const factory FormBlocEvent.submit() = Submit;
}
