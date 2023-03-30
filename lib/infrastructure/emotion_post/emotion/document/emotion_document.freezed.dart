// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emotion_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmotionDocument _$EmotionDocumentFromJson(Map<String, dynamic> json) {
  return _EmotionDocument.fromJson(json);
}

/// @nodoc
mixin _$EmotionDocument {
  String get postId => throw _privateConstructorUsedError;
  String get sentence => throw _privateConstructorUsedError;
  String get weather => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmotionDocumentCopyWith<EmotionDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmotionDocumentCopyWith<$Res> {
  factory $EmotionDocumentCopyWith(
          EmotionDocument value, $Res Function(EmotionDocument) then) =
      _$EmotionDocumentCopyWithImpl<$Res, EmotionDocument>;
  @useResult
  $Res call(
      {String postId,
      String sentence,
      String weather,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class _$EmotionDocumentCopyWithImpl<$Res, $Val extends EmotionDocument>
    implements $EmotionDocumentCopyWith<$Res> {
  _$EmotionDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? sentence = null,
    Object? weather = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      sentence: null == sentence
          ? _value.sentence
          : sentence // ignore: cast_nullable_to_non_nullable
              as String,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_EmotionDocumentCopyWith<$Res>
    implements $EmotionDocumentCopyWith<$Res> {
  factory _$$_EmotionDocumentCopyWith(
          _$_EmotionDocument value, $Res Function(_$_EmotionDocument) then) =
      __$$_EmotionDocumentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String postId,
      String sentence,
      String weather,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class __$$_EmotionDocumentCopyWithImpl<$Res>
    extends _$EmotionDocumentCopyWithImpl<$Res, _$_EmotionDocument>
    implements _$$_EmotionDocumentCopyWith<$Res> {
  __$$_EmotionDocumentCopyWithImpl(
      _$_EmotionDocument _value, $Res Function(_$_EmotionDocument) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? sentence = null,
    Object? weather = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_EmotionDocument(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      sentence: null == sentence
          ? _value.sentence
          : sentence // ignore: cast_nullable_to_non_nullable
              as String,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
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
class _$_EmotionDocument implements _EmotionDocument {
  const _$_EmotionDocument(
      {required this.postId,
      required this.sentence,
      required this.weather,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt});

  factory _$_EmotionDocument.fromJson(Map<String, dynamic> json) =>
      _$$_EmotionDocumentFromJson(json);

  @override
  final String postId;
  @override
  final String sentence;
  @override
  final String weather;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'EmotionDocument(postId: $postId, sentence: $sentence, weather: $weather, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmotionDocument &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.sentence, sentence) ||
                other.sentence == sentence) &&
            (identical(other.weather, weather) || other.weather == weather) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, postId, sentence, weather, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmotionDocumentCopyWith<_$_EmotionDocument> get copyWith =>
      __$$_EmotionDocumentCopyWithImpl<_$_EmotionDocument>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmotionDocumentToJson(
      this,
    );
  }
}

abstract class _EmotionDocument implements EmotionDocument {
  const factory _EmotionDocument(
      {required final String postId,
      required final String sentence,
      required final String weather,
      @TimestampConverter() final DateTime? createdAt,
      @TimestampConverter() final DateTime? updatedAt}) = _$_EmotionDocument;

  factory _EmotionDocument.fromJson(Map<String, dynamic> json) =
      _$_EmotionDocument.fromJson;

  @override
  String get postId;
  @override
  String get sentence;
  @override
  String get weather;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_EmotionDocumentCopyWith<_$_EmotionDocument> get copyWith =>
      throw _privateConstructorUsedError;
}
