import 'package:freezed_annotation/freezed_annotation.dart';
import 'editor_js_css_tag.dart'; // Ensure the correct import path

part 'editor_js_view_styles.freezed.dart';
part 'editor_js_view_styles.g.dart';

@freezed
class EditorJSViewStyles with _$EditorJSViewStyles {
  const factory EditorJSViewStyles({
    List<EditorJSCSSTag>? cssTags,
    String? defaultFont,
  }) = _EditorJSViewStyles;

  factory EditorJSViewStyles.fromJson(Map<String, dynamic> json) =>
      _$EditorJSViewStylesFromJson(json);
}