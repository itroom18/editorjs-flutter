import 'package:freezed_annotation/freezed_annotation.dart';
import 'editor_js_block_file.dart'; // Ensure the correct import path

part 'editor_js_block_data.freezed.dart';
part 'editor_js_block_data.g.dart';

@freezed
class EditorJSBlockData with _$EditorJSBlockData {
  const factory EditorJSBlockData({
    String? text,
    String? html,
    int? level,
    String? style,
    List<String>? items,
    EditorJSBlockFile? file,
    String? caption,
    bool? withBorder,
    bool? stretched,
    bool? withBackground,
  }) = _EditorJSBlockData;

  factory EditorJSBlockData.fromJson(Map<String, dynamic> json) =>
      _$EditorJSBlockDataFromJson(json);
}