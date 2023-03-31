// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emotion_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmotionPost {
  String get id => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get weather => throw _privateConstructorUsedError;
  List<Emotion> get emotions => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmotionPostCopyWith<EmotionPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmotionPostCopyWith<$Res> {
  factory $EmotionPostCopyWith(
          EmotionPost value, $Res Function(EmotionPost) then) =
      _$EmotionPostCopyWithImpl<$Res, EmotionPost>;
  @useResult
  $Res call(
      {String id,
      String uid,
      String weather,
      List<Emotion> emotions,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$EmotionPostCopyWithImpl<$Res, $Val extends EmotionPost>
    implements $EmotionPostCopyWith<$Res> {
  _$EmotionPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uid = null,
    Object? weather = null,
    Object? emotions = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as String,
      emotions: null == emotions
          ? _value.emotions
          : emotions // ignore: cast_nullable_to_non_nullable
              as List<Emotion>,
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
abstract class _$$_EmotionPostCopyWith<$Res>
    implements $EmotionPostCopyWith<$Res> {
  factory _$$_EmotionPostCopyWith(
          _$_EmotionPost value, $Res Function(_$_EmotionPost) then) =
      __$$_EmotionPostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String uid,
      String weather,
      List<Emotion> emotions,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$_EmotionPostCopyWithImpl<$Res>
    extends _$EmotionPostCopyWithImpl<$Res, _$_EmotionPost>
    implements _$$_EmotionPostCopyWith<$Res> {
  __$$_EmotionPostCopyWithImpl(
      _$_EmotionPost _value, $Res Function(_$_EmotionPost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uid = null,
    Object? weather = null,
    Object? emotions = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_EmotionPost(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as String,
      emotions: null == emotions
          ? _value._emotions
          : emotions // ignore: cast_nullable_to_non_nullable
              as List<Emotion>,
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

class _$_EmotionPost implements _EmotionPost {
  const _$_EmotionPost(
      {required this.id,
      required this.uid,
      required this.weather,
      required final List<Emotion> emotions,
      this.createdAt,
      this.updatedAt})
      : _emotions = emotions;

  @override
  final String id;
  @override
  final String uid;
  @override
  final String weather;
  final List<Emotion> _emotions;
  @override
  List<Emotion> get emotions {
    if (_emotions is EqualUnmodifiableListView) return _emotions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emotions);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'EmotionPost(id: $id, uid: $uid, weather: $weather, emotions: $emotions, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmotionPost &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.weather, weather) || other.weather == weather) &&
            const DeepCollectionEquality().equals(other._emotions, _emotions) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, uid, weather,
      const DeepCollectionEquality().hash(_emotions), createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmotionPostCopyWith<_$_EmotionPost> get copyWith =>
      __$$_EmotionPostCopyWithImpl<_$_EmotionPost>(this, _$identity);
}

abstract class _EmotionPost implements EmotionPost {
  const factory _EmotionPost(
      {required final String id,
      required final String uid,
      required final String weather,
      required final List<Emotion> emotions,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_EmotionPost;

  @override
  String get id;
  @override
  String get uid;
  @override
  String get weather;
  @override
  List<Emotion> get emotions;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_EmotionPostCopyWith<_$_EmotionPost> get copyWith =>
      throw _privateConstructorUsedError;
}
