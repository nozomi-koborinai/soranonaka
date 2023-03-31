import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

/// ユーザーエンティティ
@freezed
class User with _$User {
  const factory User({
    required final String uid,
    required final String name,
    required final String gender,
    required final String comment,
    required final String imageUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _User;
}
