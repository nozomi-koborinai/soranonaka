// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emotion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Emotion {
  String get id => throw _privateConstructorUsedError;
  String get postId => throw _privateConstructorUsedError;
  String get sentence => throw _privateConstructorUsedError;
  String get weather => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmotionCopyWith<Emotion> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmotionCopyWith<$Res> {
  factory $EmotionCopyWith(Emotion value, $Res Function(Emotion) then) =
      _$EmotionCopyWithImpl<$Res, Emotion>;
  @useResult
  $Res call(
      {String id,
      String postId,
      String sentence,
      String weather,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$EmotionCopyWithImpl<$Res, $Val extends Emotion>
    implements $EmotionCopyWith<$Res> {
  _$EmotionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postId = null,
    Object? sentence = null,
    Object? weather = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_EmotionCopyWith<$Res> implements $EmotionCopyWith<$Res> {
  factory _$$_EmotionCopyWith(
          _$_Emotion value, $Res Function(_$_Emotion) then) =
      __$$_EmotionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String postId,
      String sentence,
      String weather,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$_EmotionCopyWithImpl<$Res>
    extends _$EmotionCopyWithImpl<$Res, _$_Emotion>
    implements _$$_EmotionCopyWith<$Res> {
  __$$_EmotionCopyWithImpl(_$_Emotion _value, $Res Function(_$_Emotion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postId = null,
    Object? sentence = null,
    Object? weather = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Emotion(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$_Emotion implements _Emotion {
  const _$_Emotion(
      {required this.id,
      required this.postId,
      required this.sentence,
      required this.weather,
      this.createdAt,
      this.updatedAt});

  @override
  final String id;
  @override
  final String postId;
  @override
  final String sentence;
  @override
  final String weather;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Emotion(id: $id, postId: $postId, sentence: $sentence, weather: $weather, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Emotion &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.sentence, sentence) ||
                other.sentence == sentence) &&
            (identical(other.weather, weather) || other.weather == weather) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, postId, sentence, weather, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmotionCopyWith<_$_Emotion> get copyWith =>
      __$$_EmotionCopyWithImpl<_$_Emotion>(this, _$identity);
}

abstract class _Emotion implements Emotion {
  const factory _Emotion(
      {required final String id,
      required final String postId,
      required final String sentence,
      required final String weather,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_Emotion;

  @override
  String get id;
  @override
  String get postId;
  @override
  String get sentence;
  @override
  String get weather;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_EmotionCopyWith<_$_Emotion> get copyWith =>
      throw _privateConstructorUsedError;
}
