// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDocument _$$_UserDocumentFromJson(Map<String, dynamic> json) =>
    _$_UserDocument(
      name: json['name'] as String,
      gender: json['gender'] as String,
      comment: json['comment'] as String,
      imageUrl: json['imageUrl'] as String,
      createdAt: _$JsonConverterFromJson<Object, DateTime>(
          json['createdAt'], const TimestampConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<Object, DateTime>(
          json['updatedAt'], const TimestampConverter().fromJson),
    );

Map<String, dynamic> _$$_UserDocumentToJson(_$_UserDocument instance) =>
    <String, dynamic>{
      'name': instance.name,
      'gender': instance.gender,
      'comment': instance.comment,
      'imageUrl': instance.imageUrl,
      'createdAt': _$JsonConverterToJson<Object, DateTime>(
          instance.createdAt, const TimestampConverter().toJson),
      'updatedAt': _$JsonConverterToJson<Object, DateTime>(
          instance.updatedAt, const TimestampConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
