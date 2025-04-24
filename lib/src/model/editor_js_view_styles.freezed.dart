// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editor_js_view_styles.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditorJSViewStyles _$EditorJSViewStylesFromJson(Map<String, dynamic> json) {
  return _EditorJSViewStyles.fromJson(json);
}

/// @nodoc
mixin _$EditorJSViewStyles {
  List<EditorJSCSSTag>? get cssTags => throw _privateConstructorUsedError;
  String? get defaultFont => throw _privateConstructorUsedError;

  /// Serializes this EditorJSViewStyles to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditorJSViewStyles
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditorJSViewStylesCopyWith<EditorJSViewStyles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorJSViewStylesCopyWith<$Res> {
  factory $EditorJSViewStylesCopyWith(
          EditorJSViewStyles value, $Res Function(EditorJSViewStyles) then) =
      _$EditorJSViewStylesCopyWithImpl<$Res, EditorJSViewStyles>;
  @useResult
  $Res call({List<EditorJSCSSTag>? cssTags, String? defaultFont});
}

/// @nodoc
class _$EditorJSViewStylesCopyWithImpl<$Res, $Val extends EditorJSViewStyles>
    implements $EditorJSViewStylesCopyWith<$Res> {
  _$EditorJSViewStylesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditorJSViewStyles
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cssTags = freezed,
    Object? defaultFont = freezed,
  }) {
    return _then(_value.copyWith(
      cssTags: freezed == cssTags
          ? _value.cssTags
          : cssTags // ignore: cast_nullable_to_non_nullable
              as List<EditorJSCSSTag>?,
      defaultFont: freezed == defaultFont
          ? _value.defaultFont
          : defaultFont // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditorJSViewStylesImplCopyWith<$Res>
    implements $EditorJSViewStylesCopyWith<$Res> {
  factory _$$EditorJSViewStylesImplCopyWith(_$EditorJSViewStylesImpl value,
          $Res Function(_$EditorJSViewStylesImpl) then) =
      __$$EditorJSViewStylesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EditorJSCSSTag>? cssTags, String? defaultFont});
}

/// @nodoc
class __$$EditorJSViewStylesImplCopyWithImpl<$Res>
    extends _$EditorJSViewStylesCopyWithImpl<$Res, _$EditorJSViewStylesImpl>
    implements _$$EditorJSViewStylesImplCopyWith<$Res> {
  __$$EditorJSViewStylesImplCopyWithImpl(_$EditorJSViewStylesImpl _value,
      $Res Function(_$EditorJSViewStylesImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditorJSViewStyles
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cssTags = freezed,
    Object? defaultFont = freezed,
  }) {
    return _then(_$EditorJSViewStylesImpl(
      cssTags: freezed == cssTags
          ? _value._cssTags
          : cssTags // ignore: cast_nullable_to_non_nullable
              as List<EditorJSCSSTag>?,
      defaultFont: freezed == defaultFont
          ? _value.defaultFont
          : defaultFont // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditorJSViewStylesImpl implements _EditorJSViewStyles {
  const _$EditorJSViewStylesImpl(
      {final List<EditorJSCSSTag>? cssTags, this.defaultFont})
      : _cssTags = cssTags;

  factory _$EditorJSViewStylesImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditorJSViewStylesImplFromJson(json);

  final List<EditorJSCSSTag>? _cssTags;
  @override
  List<EditorJSCSSTag>? get cssTags {
    final value = _cssTags;
    if (value == null) return null;
    if (_cssTags is EqualUnmodifiableListView) return _cssTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? defaultFont;

  @override
  String toString() {
    return 'EditorJSViewStyles(cssTags: $cssTags, defaultFont: $defaultFont)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorJSViewStylesImpl &&
            const DeepCollectionEquality().equals(other._cssTags, _cssTags) &&
            (identical(other.defaultFont, defaultFont) ||
                other.defaultFont == defaultFont));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cssTags), defaultFont);

  /// Create a copy of EditorJSViewStyles
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditorJSViewStylesImplCopyWith<_$EditorJSViewStylesImpl> get copyWith =>
      __$$EditorJSViewStylesImplCopyWithImpl<_$EditorJSViewStylesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditorJSViewStylesImplToJson(
      this,
    );
  }
}

abstract class _EditorJSViewStyles implements EditorJSViewStyles {
  const factory _EditorJSViewStyles(
      {final List<EditorJSCSSTag>? cssTags,
      final String? defaultFont}) = _$EditorJSViewStylesImpl;

  factory _EditorJSViewStyles.fromJson(Map<String, dynamic> json) =
      _$EditorJSViewStylesImpl.fromJson;

  @override
  List<EditorJSCSSTag>? get cssTags;
  @override
  String? get defaultFont;

  /// Create a copy of EditorJSViewStyles
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditorJSViewStylesImplCopyWith<_$EditorJSViewStylesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
