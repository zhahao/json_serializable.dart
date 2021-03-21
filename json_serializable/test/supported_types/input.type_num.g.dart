// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.type_num.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromJson(Map<String, dynamic> json) {
  return SimpleClass(
    JsonSerializableSafety.jsonToNum(json['value']),
    JsonSerializableSafety.jsonToNum(json['nullable']),
  )..withDefault =
      JsonSerializableSafety.jsonToNum(json['withDefault']) ?? 88.6;
}

Map<String, dynamic> _$SimpleClassToJson(SimpleClass instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
      'withDefault': instance.withDefault,
    };
