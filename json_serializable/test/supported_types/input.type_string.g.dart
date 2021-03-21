// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.type_string.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromJson(Map<String, dynamic> json) {
  return SimpleClass(
    JsonSerializableSafety.jsonToString(json['value']),
    JsonSerializableSafety.jsonToString(json['nullable']),
  )..withDefault =
      JsonSerializableSafety.jsonToString(json['withDefault']) ?? 'a string';
}

Map<String, dynamic> _$SimpleClassToJson(SimpleClass instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
      'withDefault': instance.withDefault,
    };
