import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:editorjs_flutter/src/model/editor_js_data.dart';
import 'package:editorjs_flutter/src/model/editor_js_view_styles.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditorJSView extends StatefulWidget {
  final EditorJSData? data;
  final EditorJSViewStyles? styles;

  final FutureOr<bool> Function(String)? onLinkTap;

  const EditorJSView({
    Key? key,
    this.data,
    this.styles,
    this.onLinkTap,
  }) : super(key: key);

  @override
  EditorJSViewState createState() => EditorJSViewState();
}

class EditorJSViewState extends State<EditorJSView> {
  String? data;
  final List<Widget> items = <Widget>[];

  @override
  void initState() {
    super.initState();

    widget.data?.blocks?.forEach(
      (element) {
        double levelFontSize = 16;

        switch (element.data!.level) {
          case 1:
            levelFontSize = 32;
            break;
          case 2:
            levelFontSize = 24;
            break;
          case 3:
            levelFontSize = 16;
            break;
          case 4:
            levelFontSize = 12;
            break;
          case 5:
            levelFontSize = 10;
            break;
          case 6:
            levelFontSize = 8;
            break;
        }

        switch (element.type) {
          case "header":
            final fontWeight = (element.data!.level! <= 3)
                ? FontWeight.bold
                : FontWeight.normal;
            Color? color = null;
            if (widget.styles != null) {
              final foundGlobalStyle = widget.styles?.cssTags
                  ?.firstWhereOrNull(((css) => css.tag == 'header'));
              if (foundGlobalStyle != null && foundGlobalStyle.color != null) {
                final colorHex = foundGlobalStyle.color!;
                color = getColor(colorHex);
              }
            }
            items.add(
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Flexible(
                child: Text(
                  element.data!.text!,
                  style: TextStyle(
                      fontSize: levelFontSize,
                      fontWeight: fontWeight,
                      color: color),
                ),
              )
            ]));
            break;
          case "paragraph":
            items.add(
              HtmlWidget(
                '<p class="custom">${element.data!.text}</p>',
                onTapUrl: widget.onLinkTap,
                customStylesBuilder: (el) {
                  if (widget.styles != null) {
                    final foundGlobalStyle = widget.styles?.cssTags
                        ?.firstWhereOrNull(((css) => css.tag == 'p'));

                    log("Found Global Style: ${foundGlobalStyle?.toJson()}",
                        name: "editorjs");
                    if (foundGlobalStyle != null) {
                      final style = foundGlobalStyle
                          .toJson()
                          .map((key, value) => MapEntry(key, '$value'));
                      return style;
                    }
                  }
                  if (el.className.contains('custom') &&
                      element.data?.style != null) {
                    return jsonDecode(element.data!.style!);
                  }
                  return null;
                },
              ),
            );
            break;
          case "list":
            String? style = element.data!.style;
            List<String> list = [];
            String data = '';
            element.data!.items!.forEach(
              (element) {
                list.add(
                  '<li>$element</li>',
                );
              },
            );
            if (style == 'ordered') {
              data = '<ol>${list.join()}</ol>';
            } else {
              data = '<ul>${list.join()}</ul>';
            }
            items.add(HtmlWidget(
              data,
              onTapUrl: widget.onLinkTap,
            ));
            break;
          case "delimiter":
            items.add(Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Expanded(child: Divider(color: Colors.grey))]));
            break;
          case "image":
            Widget imageWidget = Image.network(element.data!.file!.url!);

            if (element.data?.caption != null) {
              imageWidget = Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  imageWidget,
                  SizedBox(height: 8),
                  Text(
                    element.data!.caption!,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.grey[700],
                      fontSize: 14,
                    ),
                  ),
                ],
              );
            }

            if (element.data?.text != null) {
              imageWidget = Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  imageWidget,
                  SizedBox(height: 8),
                  Text(element.data!.text!),
                ],
              );
            }

            items.add(imageWidget);
            break;
          case "quote":
            try {
              items.add(
                Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(77, 106, 203, 201),
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 16,
                    children: [
                      SvgPicture.asset('assets/icons/quoteTop.svg',
                          package: 'editorjs_flutter'),
                      Text(
                        element.data!.text!,
                        textAlign: TextAlign.start,
                        style: const TextStyle(fontStyle: FontStyle.italic),
                      ),
                      if (element.data?.caption != null)
                        Text('- ${element.data!.caption!}'),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SvgPicture.asset('assets/icons/quoteBottom.svg',
                            package: 'editorjs_flutter'),
                      ),
                    ],
                  ),
                ),
              );
            } catch (e) {
              print('Ошибка при отображении цитаты: $e');
            }
            break;
          case "table":
            try {
              final List<dynamic> tableContent = element.data!.content!;
              int indexRow = 0;

              items.add(
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                    child: Table(
                      border: const TableBorder.symmetric(),
                      defaultColumnWidth: const IntrinsicColumnWidth(),
                      children: tableContent.map<TableRow>((row) {
                        int indexItem = 0;
                        return TableRow(
                          decoration: (indexRow++) < tableContent.length - 1
                              ? const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              : null,
                          children: (row as List<dynamic>).map<Widget>((cell) {
                            return ConstrainedBox(
                              constraints: const BoxConstraints(minWidth: 200),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: (indexItem++) < row.length - 1
                                      ? const Border(
                                          right: BorderSide(
                                            color: Colors.white,
                                          ),
                                        )
                                      : null,
                                ),
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  cell.toString(),
                                  softWrap: true,
                                ),
                              ),
                            );
                          }).toList(),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              );
            } catch (e) {
              print('Ошибка при отображении таблицы: $e');
            }
            break;
          case "raw":
            if (element.data?.html != null) {
              items.add(HtmlWidget(
                element.data!.html!,
                onTapUrl: widget.onLinkTap,
              ));
            }
            break;
        }
        items.add(const SizedBox(height: 10));
      },
    );
  }

  Color? getColor(String hexColor) {
    hexColor = hexColor.replaceAll('#', '');

    if (hexColor.length == 8) {
      return Color(int.parse('0x$hexColor'));
    } else if (hexColor.length == 6) {
      return Color(int.parse('0xFF$hexColor'));
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: items);
  }
}

class EditorBlockRenderer extends StatelessWidget {
  final List<dynamic> blocks;

  EditorBlockRenderer({required this.blocks});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: blocks.map<Widget>((block) {
        switch (block['type']) {
          case 'header':
            return Text(
              block['data']['text'],
              style: TextStyle(
                fontSize: 24.0 - (block['data']['level'] * 2),
                fontWeight: FontWeight.bold,
              ),
            );
          case 'paragraph':
            return HtmlWidget(block['data']['text']);
          case 'list':
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: block['data']['items'].map<Widget>((item) {
                return Text('• $item');
              }).toList(),
            );
          case 'image':
            return Image.network(block['data']['file']['url']);
          case 'quote':
            return Container(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border(left: BorderSide(color: Colors.grey, width: 4)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('“${block['data']['text']}”',
                      style: TextStyle(fontStyle: FontStyle.italic)),
                  SizedBox(height: 4.0),
                  Text('- ${block['data']['caption']}',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            );
          case 'video':
            return VideoPlayerBlock(videoUrl: block['data']['file']['url']);
          case 'table':
            return TableBlock(tableData: block['data']['content']);
          default:
            return SizedBox.shrink();
        }
      }).toList(),
    );
  }
}

class VideoPlayerBlock extends StatefulWidget {
  final String videoUrl;

  VideoPlayerBlock({required this.videoUrl});

  @override
  _VideoPlayerBlockState createState() => _VideoPlayerBlockState();
}

class _VideoPlayerBlockState extends State<VideoPlayerBlock> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
        ),
      ],
    );
  }
}

class TableBlock extends StatelessWidget {
  final List<List<String>> tableData;

  TableBlock({required this.tableData});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      children: tableData.map<TableRow>((row) {
        return TableRow(
          children: row.map<Widget>((cell) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(cell),
            );
          }).toList(),
        );
      }).toList(),
    );
  }
}
