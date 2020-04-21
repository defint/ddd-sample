import 'package:injectable/injectable.dart';
import 'package:web_form/domain/counter/counter_value_objects.dart';
import 'package:web_form/infrastructure/counter/counter_backend_dto.dart';
import 'package:web_form/infrastructure/counter/i_counter_repository.dart';

@injectable
@prod
@RegisterAs(ICounterRepository)
class CounterBackendRepository implements ICounterRepository {
  Future<Counter> getCounter() async {
    var counterDto = CounterBackendDTO.fromJson({"loaded_counter": 123});
    return Counter(counterDto.loadedCounter);
  }
}
