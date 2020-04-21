import 'package:web_form/domain/counter/counter_value_objects.dart';

abstract class ICounterService {
  Future<Counter> increment(Counter counter);
  Future<Counter> decrement(Counter counter);
  Future<Counter> load();
  Stream<Counter> watch();
}
