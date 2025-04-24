import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:editorjs_flutter/src/model/editor_js_data.dart';
import 'package:editorjs_flutter/src/model/editor_js_view_styles.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class EditorJSView extends StatefulWidget {
  final EditorJSData? data;
  final EditorJSViewStyles? styles;

  /// A function that defines what to do when a link is tapped
  final FutureOr<bool> Function(String)? onLinkTap;

  /// A function that defines what to do when an anchor link is tapped. When this value is set,
  /// the default anchor behaviour is overwritten.
  // final OnTap? onAnchorTap;

  const EditorJSView({
    Key? key,
    this.data,
    this.styles,
    this.onLinkTap,
    // this.onAnchorTap,
  }) : super(key: key);

  @override
  EditorJSViewState createState() => EditorJSViewState();
}

class EditorJSViewState extends State<EditorJSView> {
  String? data;
  final List<Widget> items = <Widget>[];
  // late Map<String, Style> customStyleMap;

  @override
  void initState() {
    super.initState();

    // customStyleMap = generateStylemap(widget.styles?.cssTags);

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
            // items.add(Html(
            //   data: '<p>tesss${element.data!.text}</p>',
            //   style: customStyleMap,
            //   shrinkWrap: true,
            //   onLinkTap: widget.onLinkTap,
            //   onAnchorTap: widget.onAnchorTap,
            // ));
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
            )
                // Html(
                //   data: data,
                //   style: {
                //     ...customStyleMap,
                //     'ol': Style(
                //         padding: HtmlPaddings.zero,
                //         margin: Margins.symmetric(horizontal: 20)),
                //     'ul': Style(
                //         padding: HtmlPaddings.zero,
                //         margin: Margins.symmetric(horizontal: 20)),
                //   },
                //   shrinkWrap: true,
                //   onLinkTap: widget.onLinkTap,
                //   onAnchorTap: widget.onAnchorTap,
                // ),
                );
            break;
          case "delimiter":
            items.add(
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              // Text('***', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), textAlign: TextAlign.center,)
              Expanded(child: Divider(color: Colors.grey))
            ]));
            break;
          case "image":
            items.add(Image.network(element.data!.file!.url!));
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

  // Map<String, Style> generateStylemap(List<EditorJSCSSTag>? styles) {
  //   Map<String, Style> map = <String, Style>{};

  //   styles?.forEach(
  //     (element) {
  //       map.putIfAbsent(
  //           element.tag.toString(),
  //           () => Style(
  //               margin: Margins.zero,
  //               backgroundColor: (element.backgroundColor != null)
  //                   ? getColor(element.backgroundColor!)
  //                   : null,
  //               color:
  //                   (element.color != null) ? getColor(element.color!) : null,
  //               padding: HtmlPaddings.all(element.padding ?? 0)));
  //     },
  //   );

  //   return map;
  // }

  Color? getColor(String hexColor) {
    // Remove the '#' if it is there
    hexColor = hexColor.replaceAll('#', '');

    // Check if the hex string has 8 characters (including alpha)
    if (hexColor.length == 8) {
      return Color(int.parse('0x$hexColor'));
    } else if (hexColor.length == 6) {
      return Color(
          int.parse('0xFF$hexColor')); // Default alpha to 255 (fully opaque)
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: items);
  }
}

// Not impletemented yet

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
                fontSize: 24.0 -
                    (block['data']['level'] * 2), // Adjust size based on level
                fontWeight: FontWeight.bold,
              ),
            );
          case 'paragraph':
            return HtmlWidget(block['data']['text']);
          case 'list':
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: block['data']['items'].map<Widget>((item) {
                return Text('• $item'); // Bullet point for unordered list
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
            return SizedBox
                .shrink(); // Return an empty widget for unhandled types
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
  // late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    // _controller = VideoPlayerController.network(widget.videoUrl)
    //   ..initialize().then((_) {
    //     setState(() {}); // Update the UI when the video is initialized
    //   });
  }

  @override
  void dispose() {
    // _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          // child: VideoPlayer(_controller),
        ),
        // VideoProgressIndicator(_controller, allowScrubbing: true),
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
