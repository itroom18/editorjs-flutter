// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editor_js_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditorJSBlockImpl _$$EditorJSBlockImplFromJson(Map<String, dynamic> json) =>
    _$EditorJSBlockImpl(
      type: json['type'] as String?,
      data: json['data'] == null
          ? null
          : EditorJSBlockData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EditorJSBlockImplToJson(_$EditorJSBlockImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'data': instance.data,
    };
