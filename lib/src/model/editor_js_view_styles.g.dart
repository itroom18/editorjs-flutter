// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editor_js_view_styles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditorJSViewStylesImpl _$$EditorJSViewStylesImplFromJson(
        Map<String, dynamic> json) =>
    _$EditorJSViewStylesImpl(
      cssTags: (json['cssTags'] as List<dynamic>?)
          ?.map((e) => EditorJSCSSTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      defaultFont: json['defaultFont'] as String?,
    );

Map<String, dynamic> _$$EditorJSViewStylesImplToJson(
        _$EditorJSViewStylesImpl instance) =>
    <String, dynamic>{
      'cssTags': instance.cssTags,
      'defaultFont': instance.defaultFont,
    };
