import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_form/application/form/form_bloc.dart';
import 'package:web_form/injection.dart';

class FormScreen extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget get wrappedRoute =>
      BlocProvider(create: (context) => getIt<FormBloc>(), child: this);

  FormScreen({Key key, this.title = "Form Screen"}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: BlocBuilder<FormBloc, FormBlocState>(
        builder: (context, state) {
          return Form(
            autovalidate: true,
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                  ),
                  autocorrect: false,
                  onChanged: (value) => context
                      .bloc<FormBloc>()
                      .add(FormBlocEvent.changeName(value)),
                  validator: (_) => context
                      .bloc<FormBloc>()
                      .state
                      .name
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          emptyString: (_) => 'Required field',
                          lengthMax: (error) => 'Max length: ${error.length}',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
