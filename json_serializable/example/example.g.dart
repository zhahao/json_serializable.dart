// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) {
  return Person(
    firstName: JsonSerializableSafety.jsonToString(json['firstName']),
    lastName: JsonSerializableSafety.jsonToString(json['lastName']),
    dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
    age: JsonSerializableSafety.jsonToInt(json['age']),
  );
}

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'age': instance.age,
    };
