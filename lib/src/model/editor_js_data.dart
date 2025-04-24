import 'package:freezed_annotation/freezed_annotation.dart';
import 'editor_js_block.dart'; // Ensure the correct import path

part 'editor_js_data.freezed.dart';
part 'editor_js_data.g.dart';

@freezed
class EditorJSData with _$EditorJSData {
  const factory EditorJSData({
    int? time,
    String? version,
    List<EditorJSBlock>? blocks,
  }) = _EditorJSData;

  factory EditorJSData.fromJson(Map<String, dynamic> json) =>
      _$EditorJSDataFromJson(json);
}