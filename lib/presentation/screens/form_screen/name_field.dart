import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:web_form/application/form/form_bloc.dart';

class NameField extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController fieldController = useTextEditingController();
    final FocusNode _focusNode = useFocusNode();

    return BlocConsumer<FormBloc, FormBlocState>(
        listener: (context, state) {
          fieldController.text = state.name.value.getOrElse(() => "");
        },
        listenWhen: (p, c) => !_focusNode.hasFocus && p.name != c.name,
        buildWhen: (p, c) => p.name != c.name,
        builder: (context, state) {
          return TextFormField(
              controller: fieldController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
              autocorrect: false,
              focusNode: _focusNode,
              onChanged: (value) {
                context.bloc<FormBloc>().add(FormBlocEvent.changeName(value));
              },
              validator: (_) => context.bloc<FormBloc>().state.name.value.fold(
                    (f) => f.maybeMap(
                      emptyString: (_) => 'Required field',
                      lengthMax: (error) => 'Max length: ${error.length}',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ));
        });
  }
}
