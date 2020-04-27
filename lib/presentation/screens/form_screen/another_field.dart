import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:web_form/application/form/form_bloc.dart';

class AnotherField extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController fieldController = useTextEditingController();
    final FocusNode _focusNode = useFocusNode();

    return BlocConsumer<FormBloc, FormBlocState>(
        listener: (context, state) {
          fieldController.text =
              state.doubledName.value.fold((l) => l.failedValue, (r) => r);
        },
        listenWhen: (p, c) =>
            !_focusNode.hasFocus && p.doubledName != c.doubledName,
        buildWhen: (p, c) => p.doubledName != c.doubledName,
        builder: (context, state) {
          return TextFormField(
              controller: fieldController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'Doubled Name',
                border: OutlineInputBorder(),
              ),
              autocorrect: false,
              focusNode: _focusNode,
              onChanged: (value) {
                context
                    .bloc<FormBloc>()
                    .add(FormBlocEvent.changeDoubledName(value));
              },
              validator: (_) =>
                  context.bloc<FormBloc>().state.doubledName.value.fold(
                        (f) => f.maybeMap(
                          emptyString: (_) => 'Required field',
                          lengthMax: (error) => 'Max length: ${error.length}',
                          notEqual: (error) =>
                              'Field should not be equal to `${error.checker}`',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ));
        });
  }
}
