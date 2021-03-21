// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.type_int.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromJson(Map<String, dynamic> json) {
  return SimpleClass(
    JsonSerializableSafety.jsonToInt(json['value']),
    JsonSerializableSafety.jsonToInt(json['nullable']),
  )..withDefault = JsonSerializableSafety.jsonToInt(json['withDefault']) ?? 42;
}

Map<String, dynamic> _$SimpleClassToJson(SimpleClass instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
      'withDefault': instance.withDefault,
    };
