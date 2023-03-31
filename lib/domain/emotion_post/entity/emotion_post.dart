import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soranonaka/domain/emotion_post/emotion/entity/emotion.dart';

part 'emotion_post.freezed.dart';

/// 気持ち投稿エンティティ
@freezed
class EmotionPost with _$EmotionPost {
  const factory EmotionPost({
    required final String id,
    required final String uid,
    required final String weather,
    required final List<Emotion> emotions,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _EmotionPost;
}
