// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_backend_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CounterBackendDTO _$CounterBackendDTOFromJson(Map<String, dynamic> json) {
  return CounterBackendDTO(
    loadedCounter: json['loaded_counter'] as int,
  );
}

Map<String, dynamic> _$CounterBackendDTOToJson(CounterBackendDTO instance) =>
    <String, dynamic>{
      'loaded_counter': instance.loadedCounter,
    };
