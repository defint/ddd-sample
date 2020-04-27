import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:web_form/domain/counter/counter_value_objects.dart';

part 'form_bloc.freezed.dart';
part 'form_event.dart';
part 'form_state.dart';

@injectable
class FormBloc extends Bloc<FormBlocEvent, FormBlocState> {
  @override
  FormBlocState get initialState => FormBlocState.initial();

  @override
  Stream<FormBlocState> mapEventToState(
    FormBlocEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        add(FormBlocEvent.changeName(
            e.counter.value.getOrElse(() => 0).toString()));
      },
      changeName: (e) async* {
        yield state.copyWith(
          name: Name(e.name),
          doubledName: Name("${e.name}${e.name}"),
        );
      },
      changeDoubledName: (e) async* {
        yield state.copyWith(
          doubledName: Name(
            e.doubledName,
            notEqual: state.name.value.getOrElse(() => null),
          ),
        );
      },
      submit: (e) async* {
        // TODO
        yield state.copyWith(name: Name("aaa"));
      },
    );
  }
}
