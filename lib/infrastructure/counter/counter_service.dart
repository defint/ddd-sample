import 'dart:math';

import 'package:injectable/injectable.dart';
import 'package:web_form/domain/counter/counter_value_objects.dart';
import 'package:web_form/domain/counter/i_counter_service.dart';
import 'package:web_form/infrastructure/counter/i_counter_repository.dart';

@injectable
@RegisterAs(ICounterService)
class CounterService implements ICounterService {
  final ICounterRepository _counterRepository;

  CounterService(this._counterRepository);

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
    await Future.delayed(Duration(seconds: 1));
    return _counterRepository.getCounter();
  }

  Stream<Counter> watch() async* {
    await Future.delayed(Duration(seconds: 1));
    yield Counter(new Random().nextInt(100));
    yield* watch();
  }
}
