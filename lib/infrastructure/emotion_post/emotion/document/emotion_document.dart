import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../converter.dart';

part 'emotion_document.freezed.dart';
part 'emotion_document.g.dart';

/// 気持ち投稿ドキュメント
@freezed
class EmotionDocument with _$EmotionDocument {
  const factory EmotionDocument({
    required final String postId,
    required final String sentence,
    required final String weather,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
  }) = _EmotionDocument;

  factory EmotionDocument.fromJson(Map<String, dynamic> json) =>
      _$EmotionDocumentFromJson(json);
}
