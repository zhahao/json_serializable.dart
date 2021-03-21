// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.type_bool.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromJson(Map<String, dynamic> json) {
  return SimpleClass(
    JsonSerializableSafety.jsonToBool(json['value']),
    JsonSerializableSafety.jsonToBool(json['nullable']),
  )..withDefault =
      JsonSerializableSafety.jsonToBool(json['withDefault']) ?? true;
}

Map<String, dynamic> _$SimpleClassToJson(SimpleClass instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
      'withDefault': instance.withDefault,
    };
