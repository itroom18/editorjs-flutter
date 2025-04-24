// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editor_js_block_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditorJSBlockFile _$EditorJSBlockFileFromJson(Map<String, dynamic> json) {
  return _EditorJSBlockFile.fromJson(json);
}

/// @nodoc
mixin _$EditorJSBlockFile {
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this EditorJSBlockFile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditorJSBlockFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditorJSBlockFileCopyWith<EditorJSBlockFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorJSBlockFileCopyWith<$Res> {
  factory $EditorJSBlockFileCopyWith(
          EditorJSBlockFile value, $Res Function(EditorJSBlockFile) then) =
      _$EditorJSBlockFileCopyWithImpl<$Res, EditorJSBlockFile>;
  @useResult
  $Res call({String? url});
}

/// @nodoc
class _$EditorJSBlockFileCopyWithImpl<$Res, $Val extends EditorJSBlockFile>
    implements $EditorJSBlockFileCopyWith<$Res> {
  _$EditorJSBlockFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditorJSBlockFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditorJSBlockFileImplCopyWith<$Res>
    implements $EditorJSBlockFileCopyWith<$Res> {
  factory _$$EditorJSBlockFileImplCopyWith(_$EditorJSBlockFileImpl value,
          $Res Function(_$EditorJSBlockFileImpl) then) =
      __$$EditorJSBlockFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url});
}

/// @nodoc
class __$$EditorJSBlockFileImplCopyWithImpl<$Res>
    extends _$EditorJSBlockFileCopyWithImpl<$Res, _$EditorJSBlockFileImpl>
    implements _$$EditorJSBlockFileImplCopyWith<$Res> {
  __$$EditorJSBlockFileImplCopyWithImpl(_$EditorJSBlockFileImpl _value,
      $Res Function(_$EditorJSBlockFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditorJSBlockFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$EditorJSBlockFileImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditorJSBlockFileImpl implements _EditorJSBlockFile {
  const _$EditorJSBlockFileImpl({this.url});

  factory _$EditorJSBlockFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditorJSBlockFileImplFromJson(json);

  @override
  final String? url;

  @override
  String toString() {
    return 'EditorJSBlockFile(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorJSBlockFileImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of EditorJSBlockFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditorJSBlockFileImplCopyWith<_$EditorJSBlockFileImpl> get copyWith =>
      __$$EditorJSBlockFileImplCopyWithImpl<_$EditorJSBlockFileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditorJSBlockFileImplToJson(
      this,
    );
  }
}

abstract class _EditorJSBlockFile implements EditorJSBlockFile {
  const factory _EditorJSBlockFile({final String? url}) =
      _$EditorJSBlockFileImpl;

  factory _EditorJSBlockFile.fromJson(Map<String, dynamic> json) =
      _$EditorJSBlockFileImpl.fromJson;

  @override
  String? get url;

  /// Create a copy of EditorJSBlockFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditorJSBlockFileImplCopyWith<_$EditorJSBlockFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
