// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editor_js_css_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditorJSCSSTagImpl _$$EditorJSCSSTagImplFromJson(Map<String, dynamic> json) =>
    _$EditorJSCSSTagImpl(
      tag: json['tag'] as String?,
      backgroundColor: json['backgroundColor'] as String?,
      color: json['color'] as String?,
      padding: (json['padding'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$EditorJSCSSTagImplToJson(
    _$EditorJSCSSTagImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('backgroundColor', instance.backgroundColor);
  writeNotNull('color', instance.color);
  writeNotNull('padding', instance.padding);
  return val;
}
