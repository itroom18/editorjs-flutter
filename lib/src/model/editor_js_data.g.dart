// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editor_js_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditorJSDataImpl _$$EditorJSDataImplFromJson(Map<String, dynamic> json) =>
    _$EditorJSDataImpl(
      time: (json['time'] as num?)?.toInt(),
      version: json['version'] as String?,
      blocks: (json['blocks'] as List<dynamic>?)
          ?.map((e) => EditorJSBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EditorJSDataImplToJson(_$EditorJSDataImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'version': instance.version,
      'blocks': instance.blocks,
    };
