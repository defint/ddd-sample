import 'package:json_annotation/json_annotation.dart';

part 'counter_backend_dto.g.dart';

@JsonSerializable(nullable: false)
class CounterBackendDTO {
  @JsonKey(name: "loaded_counter")
  final int loadedCounter;

  CounterBackendDTO({
    this.loadedCounter,
  });

  factory CounterBackendDTO.fromJson(Map<String, dynamic> json) =>
      _$CounterBackendDTOFromJson(json);
  Map<String, dynamic> toJson() => _$CounterBackendDTOToJson(this);
}
