// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editor_js_block.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditorJSBlock _$EditorJSBlockFromJson(Map<String, dynamic> json) {
  return _EditorJSBlock.fromJson(json);
}

/// @nodoc
mixin _$EditorJSBlock {
  String? get type => throw _privateConstructorUsedError;
  EditorJSBlockData? get data => throw _privateConstructorUsedError;

  /// Serializes this EditorJSBlock to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditorJSBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditorJSBlockCopyWith<EditorJSBlock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorJSBlockCopyWith<$Res> {
  factory $EditorJSBlockCopyWith(
          EditorJSBlock value, $Res Function(EditorJSBlock) then) =
      _$EditorJSBlockCopyWithImpl<$Res, EditorJSBlock>;
  @useResult
  $Res call({String? type, EditorJSBlockData? data});

  $EditorJSBlockDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$EditorJSBlockCopyWithImpl<$Res, $Val extends EditorJSBlock>
    implements $EditorJSBlockCopyWith<$Res> {
  _$EditorJSBlockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditorJSBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EditorJSBlockData?,
    ) as $Val);
  }

  /// Create a copy of EditorJSBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EditorJSBlockDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $EditorJSBlockDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EditorJSBlockImplCopyWith<$Res>
    implements $EditorJSBlockCopyWith<$Res> {
  factory _$$EditorJSBlockImplCopyWith(
          _$EditorJSBlockImpl value, $Res Function(_$EditorJSBlockImpl) then) =
      __$$EditorJSBlockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, EditorJSBlockData? data});

  @override
  $EditorJSBlockDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$EditorJSBlockImplCopyWithImpl<$Res>
    extends _$EditorJSBlockCopyWithImpl<$Res, _$EditorJSBlockImpl>
    implements _$$EditorJSBlockImplCopyWith<$Res> {
  __$$EditorJSBlockImplCopyWithImpl(
      _$EditorJSBlockImpl _value, $Res Function(_$EditorJSBlockImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditorJSBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? data = freezed,
  }) {
    return _then(_$EditorJSBlockImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EditorJSBlockData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditorJSBlockImpl implements _EditorJSBlock {
  const _$EditorJSBlockImpl({this.type, this.data});

  factory _$EditorJSBlockImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditorJSBlockImplFromJson(json);

  @override
  final String? type;
  @override
  final EditorJSBlockData? data;

  @override
  String toString() {
    return 'EditorJSBlock(type: $type, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorJSBlockImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, data);

  /// Create a copy of EditorJSBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditorJSBlockImplCopyWith<_$EditorJSBlockImpl> get copyWith =>
      __$$EditorJSBlockImplCopyWithImpl<_$EditorJSBlockImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditorJSBlockImplToJson(
      this,
    );
  }
}

abstract class _EditorJSBlock implements EditorJSBlock {
  const factory _EditorJSBlock(
      {final String? type,
      final EditorJSBlockData? data}) = _$EditorJSBlockImpl;

  factory _EditorJSBlock.fromJson(Map<String, dynamic> json) =
      _$EditorJSBlockImpl.fromJson;

  @override
  String? get type;
  @override
  EditorJSBlockData? get data;

  /// Create a copy of EditorJSBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditorJSBlockImplCopyWith<_$EditorJSBlockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
