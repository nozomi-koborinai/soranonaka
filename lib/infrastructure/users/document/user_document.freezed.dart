// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDocument _$UserDocumentFromJson(Map<String, dynamic> json) {
  return _UserDocument.fromJson(json);
}

/// @nodoc
mixin _$UserDocument {
  String get name => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDocumentCopyWith<UserDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDocumentCopyWith<$Res> {
  factory $UserDocumentCopyWith(
          UserDocument value, $Res Function(UserDocument) then) =
      _$UserDocumentCopyWithImpl<$Res, UserDocument>;
  @useResult
  $Res call(
      {String name,
      String gender,
      String comment,
      String imageUrl,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class _$UserDocumentCopyWithImpl<$Res, $Val extends UserDocument>
    implements $UserDocumentCopyWith<$Res> {
  _$UserDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? gender = null,
    Object? comment = null,
    Object? imageUrl = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserDocumentCopyWith<$Res>
    implements $UserDocumentCopyWith<$Res> {
  factory _$$_UserDocumentCopyWith(
          _$_UserDocument value, $Res Function(_$_UserDocument) then) =
      __$$_UserDocumentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String gender,
      String comment,
      String imageUrl,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class __$$_UserDocumentCopyWithImpl<$Res>
    extends _$UserDocumentCopyWithImpl<$Res, _$_UserDocument>
    implements _$$_UserDocumentCopyWith<$Res> {
  __$$_UserDocumentCopyWithImpl(
      _$_UserDocument _value, $Res Function(_$_UserDocument) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? gender = null,
    Object? comment = null,
    Object? imageUrl = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_UserDocument(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDocument implements _UserDocument {
  const _$_UserDocument(
      {required this.name,
      required this.gender,
      required this.comment,
      required this.imageUrl,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt});

  factory _$_UserDocument.fromJson(Map<String, dynamic> json) =>
      _$$_UserDocumentFromJson(json);

  @override
  final String name;
  @override
  final String gender;
  @override
  final String comment;
  @override
  final String imageUrl;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'UserDocument(name: $name, gender: $gender, comment: $comment, imageUrl: $imageUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDocument &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, gender, comment, imageUrl, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDocumentCopyWith<_$_UserDocument> get copyWith =>
      __$$_UserDocumentCopyWithImpl<_$_UserDocument>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDocumentToJson(
      this,
    );
  }
}

abstract class _UserDocument implements UserDocument {
  const factory _UserDocument(
      {required final String name,
      required final String gender,
      required final String comment,
      required final String imageUrl,
      @TimestampConverter() final DateTime? createdAt,
      @TimestampConverter() final DateTime? updatedAt}) = _$_UserDocument;

  factory _UserDocument.fromJson(Map<String, dynamic> json) =
      _$_UserDocument.fromJson;

  @override
  String get name;
  @override
  String get gender;
  @override
  String get comment;
  @override
  String get imageUrl;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_UserDocumentCopyWith<_$_UserDocument> get copyWith =>
      throw _privateConstructorUsedError;
}
