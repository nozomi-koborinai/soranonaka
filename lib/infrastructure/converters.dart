import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// 日時コンバーター
class TimestampConverter implements JsonConverter<DateTime, Object> {
  const TimestampConverter();

  @override
  DateTime fromJson(Object fieldValue) {
    return (fieldValue as Timestamp).toDate();
  }

  @override
  Object toJson(DateTime dateTime) {
    // Jsonにして書き込む時はサーバーのタイムスタンプを使用
    return FieldValue.serverTimestamp();
  }
}
