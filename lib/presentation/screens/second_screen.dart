import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_form/application/counter/counter_bloc.dart';
import 'package:web_form/injection.dart';

class SecondScreen extends StatelessWidget {
  Widget build(context) {
    return BlocProvider(
        create: (context) => getIt<CounterBloc>(), child: SecondScreenPage());
  }
}

class SecondScreenPage extends StatefulWidget {
  SecondScreenPage({Key key, this.title = "Second Screen"}) : super(key: key);

  final String title;

  @override
  _SecondScreenPageState createState() => _SecondScreenPageState();
}

class _SecondScreenPageState extends State<SecondScreenPage> {
  @override
  void initState() {
    var bloc = context.bloc<CounterBloc>();
    bloc.add(CounterEvent.loadCounter());
    bloc.add(CounterEvent.watchCounter());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have loaded counter:',
            ),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return state.state.map(
                    normal: (_) => state.loadedCounter.value.fold(
                        (l) => Text("error"),
                        (r) => Text(
                              '$r',
                              style: Theme.of(context).textTheme.headline4,
                            )),
                    loading: (_) => Text("LOADING..."));
              },
            ),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  '${state.watchedCounter.value.getOrElse(() => 0)}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
