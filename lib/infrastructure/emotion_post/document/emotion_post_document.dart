import 'package:freezed_annotation/freezed_annotation.dart';

import '../../converter.dart';

part 'emotion_post_document.freezed.dart';
part 'emotion_post_document.g.dart';

/// 気持ち投稿ドキュメント
@freezed
class EmotionPostDocument with _$EmotionPostDocument {
  const factory EmotionPostDocument({
    required final String uid,
    required final String weather,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
  }) = _EmotionPostDocument;

  factory EmotionPostDocument.fromJson(Map<String, dynamic> json) =>
      _$EmotionPostDocumentFromJson(json);
}
