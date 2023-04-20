import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mood_based/components/colors.dart';
import 'package:mood_based/components/design_patterns.dart';
import 'package:mood_based/components/text_styles.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  //
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://www.youtube.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(
      Uri.parse('https://mood2movie.com'),
    );

  bool isCollapsed = true;
  bool isCollapsed2 = true;
  static Future<String> get _url async {
    await Future.delayed(const Duration(seconds: 2));
    return 'https://mood2movie.com/';
  }

  Future<bool> _onWillPop(BuildContext context) async {
    Navigator.of(context).pop(false);
    return false;
  }

  bool activeConnection = false;
  Future checkUserConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        setState(() {
          activeConnection = true;
        });
      }
    } on SocketException catch (_) {
      setState(() {
        activeConnection = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: false,
      backgroundColor: Colors.blueGrey[700],
      appBar: AppBar(
        leading: BackButton(onPressed: () => Navigator.of(context).pop(true)),
        title: const Text('Movie Recommendation'),
        actions: [
          IconButton(
            onPressed: () async {
              setState(() {
                checkUserConnection();
                Navigator.of(context).pushAndRemoveUntil<void>(
                  MaterialPageRoute<void>(builder: (BuildContext context) => const MoviesPage()),
                  ModalRoute.withName('/'),
                );
              });
            },
            icon: const Icon(Icons.refresh_rounded),
          )
        ],
      ),
      body: WillPopScope(
        onWillPop: () => _onWillPop(context),
        child: FutureBuilder(
            future: _url,
            builder: (context, snap) {
              var styleFrom = ElevatedButton.styleFrom(shape: const StadiumBorder());
              return activeConnection
                  ? snap.hasData
                      ? Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                  style: styleFrom,
                                  onPressed: () {
                                    controller.goBack();
                                  },
                                  child: const Icon(Icons.arrow_back_rounded),
                                ),
                                ElevatedButton(
                                  style: styleFrom,
                                  onPressed: () {
                                    controller.goForward();
                                  },
                                  child: const Icon(Icons.arrow_forward_rounded),
                                ),
                              ],
                            ),
                            Expanded(
                              child: WebViewWidget(
                                controller: controller,
                              ),
                            ),
                          ],
                        )
                      : Center(
                          child: Text(
                            'Please wait...',
                            style: amberText(fontSize: 20),
                          ),
                        )
                  : Center(
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: roundedAll),
                        color: AppColors.blueGrey,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Network error. Please connect to the \ninternet and refresh page',
                              textAlign: TextAlign.center,
                              style: amberText(fontSize: 20, color: const Color.fromARGB(255, 255, 17, 0))),
                        ),
                      ),
                    );
            }),
      ),
    );
  }
}
