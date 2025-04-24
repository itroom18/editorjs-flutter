// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editor_js_css_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditorJSCSSTag _$EditorJSCSSTagFromJson(Map<String, dynamic> json) {
  return _EditorJSCSSTag.fromJson(json);
}

/// @nodoc
mixin _$EditorJSCSSTag {
  @JsonKey(includeToJson: false, includeIfNull: false)
  String? get tag => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get backgroundColor => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  double? get padding => throw _privateConstructorUsedError;

  /// Serializes this EditorJSCSSTag to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditorJSCSSTag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditorJSCSSTagCopyWith<EditorJSCSSTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorJSCSSTagCopyWith<$Res> {
  factory $EditorJSCSSTagCopyWith(
          EditorJSCSSTag value, $Res Function(EditorJSCSSTag) then) =
      _$EditorJSCSSTagCopyWithImpl<$Res, EditorJSCSSTag>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeIfNull: false) String? tag,
      @JsonKey(includeIfNull: false) String? backgroundColor,
      @JsonKey(includeIfNull: false) String? color,
      @JsonKey(includeIfNull: false) double? padding});
}

/// @nodoc
class _$EditorJSCSSTagCopyWithImpl<$Res, $Val extends EditorJSCSSTag>
    implements $EditorJSCSSTagCopyWith<$Res> {
  _$EditorJSCSSTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditorJSCSSTag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = freezed,
    Object? backgroundColor = freezed,
    Object? color = freezed,
    Object? padding = freezed,
  }) {
    return _then(_value.copyWith(
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      padding: freezed == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditorJSCSSTagImplCopyWith<$Res>
    implements $EditorJSCSSTagCopyWith<$Res> {
  factory _$$EditorJSCSSTagImplCopyWith(_$EditorJSCSSTagImpl value,
          $Res Function(_$EditorJSCSSTagImpl) then) =
      __$$EditorJSCSSTagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeIfNull: false) String? tag,
      @JsonKey(includeIfNull: false) String? backgroundColor,
      @JsonKey(includeIfNull: false) String? color,
      @JsonKey(includeIfNull: false) double? padding});
}

/// @nodoc
class __$$EditorJSCSSTagImplCopyWithImpl<$Res>
    extends _$EditorJSCSSTagCopyWithImpl<$Res, _$EditorJSCSSTagImpl>
    implements _$$EditorJSCSSTagImplCopyWith<$Res> {
  __$$EditorJSCSSTagImplCopyWithImpl(
      _$EditorJSCSSTagImpl _value, $Res Function(_$EditorJSCSSTagImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditorJSCSSTag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = freezed,
    Object? backgroundColor = freezed,
    Object? color = freezed,
    Object? padding = freezed,
  }) {
    return _then(_$EditorJSCSSTagImpl(
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      padding: freezed == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditorJSCSSTagImpl implements _EditorJSCSSTag {
  const _$EditorJSCSSTagImpl(
      {@JsonKey(includeToJson: false, includeIfNull: false) this.tag,
      @JsonKey(includeIfNull: false) this.backgroundColor,
      @JsonKey(includeIfNull: false) this.color,
      @JsonKey(includeIfNull: false) this.padding});

  factory _$EditorJSCSSTagImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditorJSCSSTagImplFromJson(json);

  @override
  @JsonKey(includeToJson: false, includeIfNull: false)
  final String? tag;
  @override
  @JsonKey(includeIfNull: false)
  final String? backgroundColor;
  @override
  @JsonKey(includeIfNull: false)
  final String? color;
  @override
  @JsonKey(includeIfNull: false)
  final double? padding;

  @override
  String toString() {
    return 'EditorJSCSSTag(tag: $tag, backgroundColor: $backgroundColor, color: $color, padding: $padding)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorJSCSSTagImpl &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.padding, padding) || other.padding == padding));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, tag, backgroundColor, color, padding);

  /// Create a copy of EditorJSCSSTag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditorJSCSSTagImplCopyWith<_$EditorJSCSSTagImpl> get copyWith =>
      __$$EditorJSCSSTagImplCopyWithImpl<_$EditorJSCSSTagImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditorJSCSSTagImplToJson(
      this,
    );
  }
}

abstract class _EditorJSCSSTag implements EditorJSCSSTag {
  const factory _EditorJSCSSTag(
      {@JsonKey(includeToJson: false, includeIfNull: false) final String? tag,
      @JsonKey(includeIfNull: false) final String? backgroundColor,
      @JsonKey(includeIfNull: false) final String? color,
      @JsonKey(includeIfNull: false)
      final double? padding}) = _$EditorJSCSSTagImpl;

  factory _EditorJSCSSTag.fromJson(Map<String, dynamic> json) =
      _$EditorJSCSSTagImpl.fromJson;

  @override
  @JsonKey(includeToJson: false, includeIfNull: false)
  String? get tag;
  @override
  @JsonKey(includeIfNull: false)
  String? get backgroundColor;
  @override
  @JsonKey(includeIfNull: false)
  String? get color;
  @override
  @JsonKey(includeIfNull: false)
  double? get padding;

  /// Create a copy of EditorJSCSSTag
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditorJSCSSTagImplCopyWith<_$EditorJSCSSTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
