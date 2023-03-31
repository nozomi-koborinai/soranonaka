import 'package:freezed_annotation/freezed_annotation.dart';

part 'emotion.freezed.dart';

/// 気持ちエンティティ
@freezed
class Emotion with _$Emotion {
  const factory Emotion({
    required final String id,
    required final String postId,
    required final String sentence,
    required final String weather,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Emotion;
}
