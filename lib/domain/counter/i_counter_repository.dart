import 'package:web_form/domain/counter/counter_value_objects.dart';

abstract class ICounterRepository {
  Future<Counter> increment(Counter counter);
  Future<Counter> decrement(Counter counter);
  Future<Counter> load();
}
