// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editor_js_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditorJSData _$EditorJSDataFromJson(Map<String, dynamic> json) {
  return _EditorJSData.fromJson(json);
}

/// @nodoc
mixin _$EditorJSData {
  int? get time => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  List<EditorJSBlock>? get blocks => throw _privateConstructorUsedError;

  /// Serializes this EditorJSData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditorJSData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditorJSDataCopyWith<EditorJSData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorJSDataCopyWith<$Res> {
  factory $EditorJSDataCopyWith(
          EditorJSData value, $Res Function(EditorJSData) then) =
      _$EditorJSDataCopyWithImpl<$Res, EditorJSData>;
  @useResult
  $Res call({int? time, String? version, List<EditorJSBlock>? blocks});
}

/// @nodoc
class _$EditorJSDataCopyWithImpl<$Res, $Val extends EditorJSData>
    implements $EditorJSDataCopyWith<$Res> {
  _$EditorJSDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditorJSData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? version = freezed,
    Object? blocks = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      blocks: freezed == blocks
          ? _value.blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<EditorJSBlock>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditorJSDataImplCopyWith<$Res>
    implements $EditorJSDataCopyWith<$Res> {
  factory _$$EditorJSDataImplCopyWith(
          _$EditorJSDataImpl value, $Res Function(_$EditorJSDataImpl) then) =
      __$$EditorJSDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? time, String? version, List<EditorJSBlock>? blocks});
}

/// @nodoc
class __$$EditorJSDataImplCopyWithImpl<$Res>
    extends _$EditorJSDataCopyWithImpl<$Res, _$EditorJSDataImpl>
    implements _$$EditorJSDataImplCopyWith<$Res> {
  __$$EditorJSDataImplCopyWithImpl(
      _$EditorJSDataImpl _value, $Res Function(_$EditorJSDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditorJSData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? version = freezed,
    Object? blocks = freezed,
  }) {
    return _then(_$EditorJSDataImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      blocks: freezed == blocks
          ? _value._blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<EditorJSBlock>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditorJSDataImpl implements _EditorJSData {
  const _$EditorJSDataImpl(
      {this.time, this.version, final List<EditorJSBlock>? blocks})
      : _blocks = blocks;

  factory _$EditorJSDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditorJSDataImplFromJson(json);

  @override
  final int? time;
  @override
  final String? version;
  final List<EditorJSBlock>? _blocks;
  @override
  List<EditorJSBlock>? get blocks {
    final value = _blocks;
    if (value == null) return null;
    if (_blocks is EqualUnmodifiableListView) return _blocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EditorJSData(time: $time, version: $version, blocks: $blocks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorJSDataImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality().equals(other._blocks, _blocks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, time, version, const DeepCollectionEquality().hash(_blocks));

  /// Create a copy of EditorJSData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditorJSDataImplCopyWith<_$EditorJSDataImpl> get copyWith =>
      __$$EditorJSDataImplCopyWithImpl<_$EditorJSDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditorJSDataImplToJson(
      this,
    );
  }
}

abstract class _EditorJSData implements EditorJSData {
  const factory _EditorJSData(
      {final int? time,
      final String? version,
      final List<EditorJSBlock>? blocks}) = _$EditorJSDataImpl;

  factory _EditorJSData.fromJson(Map<String, dynamic> json) =
      _$EditorJSDataImpl.fromJson;

  @override
  int? get time;
  @override
  String? get version;
  @override
  List<EditorJSBlock>? get blocks;

  /// Create a copy of EditorJSData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditorJSDataImplCopyWith<_$EditorJSDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
