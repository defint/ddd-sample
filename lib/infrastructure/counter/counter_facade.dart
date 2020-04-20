import 'package:injectable/injectable.dart';
import 'package:web_form/domain/counter/counter_value_objects.dart';
import 'package:web_form/domain/counter/i_counter_facade.dart';

@injectable
@RegisterAs(ICounterFacade)
class CounterFacade implements ICounterFacade {
  Future<Counter> increment(Counter counter) async {
    return counter.value.fold(
      (l) => Counter(0),
      (r) => Counter(r + 1),
    );
  }

  Future<Counter> decrement(Counter counter) async {
    return counter.value.fold(
      (l) => Counter(0),
      (r) => Counter(r - 1),
    );
  }

  Future<Counter> load() async {
    await Future.delayed(Duration(seconds: 3));
    return Counter(8);
  }
}