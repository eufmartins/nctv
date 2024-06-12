// lib/widgets/video_player.dart

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class VideoPlayer extends StatelessWidget {
  final String url;

  VideoPlayer({required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
