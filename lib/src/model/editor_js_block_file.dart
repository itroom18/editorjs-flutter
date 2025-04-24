import 'package:freezed_annotation/freezed_annotation.dart';

part 'editor_js_block_file.freezed.dart';
part 'editor_js_block_file.g.dart';

@freezed
class EditorJSBlockFile with _$EditorJSBlockFile {
  const factory EditorJSBlockFile({String? url}) = _EditorJSBlockFile;

  factory EditorJSBlockFile.fromJson(Map<String, dynamic> json) => _$EditorJSBlockFileFromJson(json);
}