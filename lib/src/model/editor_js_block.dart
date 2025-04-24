import 'package:freezed_annotation/freezed_annotation.dart';
import 'editor_js_block_data.dart'; // Ensure the correct import path

part 'editor_js_block.freezed.dart';
part 'editor_js_block.g.dart';

@freezed
class EditorJSBlock with _$EditorJSBlock {
  const factory EditorJSBlock({
    String? type,
    EditorJSBlockData? data,
  }) = _EditorJSBlock;

  factory EditorJSBlock.fromJson(Map<String, dynamic> json) =>
      _$EditorJSBlockFromJson(json);
}