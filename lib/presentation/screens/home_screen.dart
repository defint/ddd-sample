import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:web_form/application/counter/counter_bloc.dart';
import 'package:web_form/injection.dart';

class HomeScreen extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget get wrappedRoute =>
      BlocProvider(create: (context) => getIt<CounterBloc>(), child: this);

  HomeScreen({Key key, this.title = "Home Screen"}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return state.counter.value.fold(
                    (l) => Text("Error"),
                    (r) => Text(
                          '$r',
                          style: Theme.of(context).textTheme.headline4,
                        ));
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.bloc<CounterBloc>().add(const CounterEvent.increment());
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
