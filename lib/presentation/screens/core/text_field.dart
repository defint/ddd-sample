import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:web_form/application/core/application_status.dart';
import 'package:web_form/domain/core/value_object.dart';

abstract class CoreTextField<B extends Bloc<dynamic, S>, S> extends HookWidget {
  String getLabelText(BuildContext context);
  ValueObject getValueObject(S state);
  ApplicationStatus getStatus(S state);
  void onChanged(String value, B bloc);
  String getResultError(S state) => null;
  Icon prefixIcon() => null;

  String getErrorText(BuildContext context, {bool isTouched}) {
    final S state = context.bloc<B>().state;

    if (!isTouched &&
        getStatus(state) == const ApplicationStatus.formInitial()) {
      return null;
    }

    return getValueObject(state).value.fold(
          (f) => f.maybeMap(
            emptyString: (_) => 'Required field',
            lengthMax: (error) => 'Max length: ${error.length}',
            notEqual: (error) =>
                'Field should not be equal to `${error.checker}`',
            orElse: () => null,
          ),
          (_) => getResultError(state),
        );
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController fieldController = useTextEditingController();
    final FocusNode _focusNode = useFocusNode();
    final ValueNotifier<bool> isTouched = useState<bool>(false);

    useEffect(() {
      void changeTouched() {
        isTouched.value |= !_focusNode.hasFocus;
      }

      _focusNode.addListener(changeTouched);

      return () => _focusNode.removeListener(changeTouched);
    });

    return BlocConsumer<B, S>(
        listener: (context, state) {
          getValueObject(state).value.fold(
                (l) => fieldController.text = l.failedValue.toString(),
                (r) => fieldController.text = r.toString(),
              );
        },
        listenWhen: (p, c) =>
            !_focusNode.hasFocus && getValueObject(p) != getValueObject(c),
        buildWhen: (p, c) =>
            getValueObject(p) != getValueObject(c) ||
            getStatus(p) != getStatus(c),
        builder: (context, state) {
          return TextFormField(
            controller: fieldController,
            decoration: InputDecoration(
              prefixIcon: prefixIcon(),
              labelText: getLabelText(context),
              border: const OutlineInputBorder(),
              errorText: getErrorText(context, isTouched: isTouched.value),
            ),
            autocorrect: false,
            focusNode: _focusNode,
            onChanged: (value) {
              final B bloc = context.bloc<B>();
              onChanged(value, bloc);
            },
          );
        });
  }
}
