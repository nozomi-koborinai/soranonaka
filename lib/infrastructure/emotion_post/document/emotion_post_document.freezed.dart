// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emotion_post_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmotionPostDocument _$EmotionPostDocumentFromJson(Map<String, dynamic> json) {
  return _EmotionPostDocument.fromJson(json);
}

/// @nodoc
mixin _$EmotionPostDocument {
  String get uid => throw _privateConstructorUsedError;
  String get weather => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmotionPostDocumentCopyWith<EmotionPostDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmotionPostDocumentCopyWith<$Res> {
  factory $EmotionPostDocumentCopyWith(
          EmotionPostDocument value, $Res Function(EmotionPostDocument) then) =
      _$EmotionPostDocumentCopyWithImpl<$Res, EmotionPostDocument>;
  @useResult
  $Res call(
      {String uid,
      String weather,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class _$EmotionPostDocumentCopyWithImpl<$Res, $Val extends EmotionPostDocument>
    implements $EmotionPostDocumentCopyWith<$Res> {
  _$EmotionPostDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? weather = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_EmotionPostDocumentCopyWith<$Res>
    implements $EmotionPostDocumentCopyWith<$Res> {
  factory _$$_EmotionPostDocumentCopyWith(_$_EmotionPostDocument value,
          $Res Function(_$_EmotionPostDocument) then) =
      __$$_EmotionPostDocumentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String weather,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class __$$_EmotionPostDocumentCopyWithImpl<$Res>
    extends _$EmotionPostDocumentCopyWithImpl<$Res, _$_EmotionPostDocument>
    implements _$$_EmotionPostDocumentCopyWith<$Res> {
  __$$_EmotionPostDocumentCopyWithImpl(_$_EmotionPostDocument _value,
      $Res Function(_$_EmotionPostDocument) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? weather = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_EmotionPostDocument(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
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
class _$_EmotionPostDocument implements _EmotionPostDocument {
  const _$_EmotionPostDocument(
      {required this.uid,
      required this.weather,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt});

  factory _$_EmotionPostDocument.fromJson(Map<String, dynamic> json) =>
      _$$_EmotionPostDocumentFromJson(json);

  @override
  final String uid;
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
    return 'EmotionPostDocument(uid: $uid, weather: $weather, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmotionPostDocument &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.weather, weather) || other.weather == weather) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uid, weather, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmotionPostDocumentCopyWith<_$_EmotionPostDocument> get copyWith =>
      __$$_EmotionPostDocumentCopyWithImpl<_$_EmotionPostDocument>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmotionPostDocumentToJson(
      this,
    );
  }
}

abstract class _EmotionPostDocument implements EmotionPostDocument {
  const factory _EmotionPostDocument(
          {required final String uid,
          required final String weather,
          @TimestampConverter() final DateTime? createdAt,
          @TimestampConverter() final DateTime? updatedAt}) =
      _$_EmotionPostDocument;

  factory _EmotionPostDocument.fromJson(Map<String, dynamic> json) =
      _$_EmotionPostDocument.fromJson;

  @override
  String get uid;
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
  _$$_EmotionPostDocumentCopyWith<_$_EmotionPostDocument> get copyWith =>
      throw _privateConstructorUsedError;
}
