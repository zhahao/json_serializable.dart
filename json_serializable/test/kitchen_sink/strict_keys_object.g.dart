// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'strict_keys_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StrictKeysObject _$StrictKeysObjectFromJson(Map json) {
  $checkKeys(json,
      allowedKeys: const ['value', 'custom_field'],
      requiredKeys: const ['value', 'custom_field']);
  return StrictKeysObject(
    JsonSerializableSafety.jsonToInt(json['value']),
    JsonSerializableSafety.jsonToString(json['custom_field']),
  );
}

Map<String, dynamic> _$StrictKeysObjectToJson(StrictKeysObject instance) =>
    <String, dynamic>{
      'value': instance.value,
      'custom_field': instance.customField,
    };
