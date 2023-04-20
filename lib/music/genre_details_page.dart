import '/imports.dart';

class GenreDetailsPage extends StatefulWidget {
  const GenreDetailsPage({super.key, required this.index});

  final int index;

  @override
  State<GenreDetailsPage> createState() => _GenreDetailsPageState();
}

class _GenreDetailsPageState extends State<GenreDetailsPage> {
  WebViewController controller(String url) => WebViewController()
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
      Uri.parse(url),
    );

  bool isOk = false;

  Future<bool> get _url async {
    await Future.delayed(const Duration(seconds: 2));
    return isOk = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        extendBody: true,
        backgroundColor: Colors.blueGrey[800],
        appBar: AppBar(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          title: Text(genres[widget.index]),
        ),
        body: FutureBuilder(
          builder: (context, snap) {
            return snap.hasData
                ? WebViewWidget(
                    controller: controller(
                      genreUrls[widget.index],
                    ),
                  )
                : const Center(child: CircularProgressIndicator());
          },
          future: _url,
        ));
  }
}
