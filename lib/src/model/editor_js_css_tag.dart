import 'package:freezed_annotation/freezed_annotation.dart';

part 'editor_js_css_tag.freezed.dart';
part 'editor_js_css_tag.g.dart';

@freezed
class EditorJSCSSTag with _$EditorJSCSSTag {
  const factory EditorJSCSSTag({
    String? tag,
    String? backgroundColor,
    String? color,
    double? padding,
  }) = _EditorJSCSSTag;

  factory EditorJSCSSTag.fromJson(Map<String, dynamic> json) =>
      _$EditorJSCSSTagFromJson(json);
}
