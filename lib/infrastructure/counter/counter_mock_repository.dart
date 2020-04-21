import 'package:injectable/injectable.dart';
import 'package:web_form/domain/counter/counter_value_objects.dart';
import 'package:web_form/infrastructure/counter/i_counter_repository.dart';

@injectable
@dev
@RegisterAs(ICounterRepository)
class CounterMockRepository implements ICounterRepository {
  Future<Counter> getCounter() async {
    return Counter(8);
  }
}
