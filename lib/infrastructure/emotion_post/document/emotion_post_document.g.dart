// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emotion_post_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmotionPostDocument _$$_EmotionPostDocumentFromJson(
        Map<String, dynamic> json) =>
    _$_EmotionPostDocument(
      uid: json['uid'] as String,
      weather: json['weather'] as String,
      createdAt: _$JsonConverterFromJson<Object, DateTime>(
          json['createdAt'], const TimestampConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<Object, DateTime>(
          json['updatedAt'], const TimestampConverter().fromJson),
    );

Map<String, dynamic> _$$_EmotionPostDocumentToJson(
        _$_EmotionPostDocument instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'weather': instance.weather,
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
