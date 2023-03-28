import 'package:freezed_annotation/freezed_annotation.dart';

import '../../converters.dart';

part 'user_document.freezed.dart';
part 'user_document.g.dart';

/// ユーザードキュメント
@freezed
class UserDocument with _$UserDocument {
  const factory UserDocument({
    required final String name,
    required final String gender,
    required final String comment,
    required final String imageUrl,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
  }) = _UserDocument;

  factory UserDocument.fromJson(Map<String, dynamic> json) =>
      _$UserDocumentFromJson(json);
}
