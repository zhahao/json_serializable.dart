// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleObject _$SimpleObjectFromJson(Map json) {
  return SimpleObject(
    JsonSerializableSafety.jsonToInt(json['value']),
  );
}

Map<String, dynamic> _$SimpleObjectToJson(SimpleObject instance) =>
    <String, dynamic>{
      'value': instance.value,
    };
