// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';
//
// class ChromeTabPage extends StatefulWidget {
//   final String url;
//   final Function(String) getUrl;
//
//   ChromeTabPage({required this.url, required this.getUrl});
//   @override
//   _ChromeTabPageState createState() => _ChromeTabPageState();
// }
//
// class _ChromeTabPageState extends State<ChromeTabPage> {
//   @override
//   Widget build(BuildContext context) {
//     final controller = WebViewController()
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..setBackgroundColor(const Color(0x00000000))
//       ..setNavigationDelegate(
//         NavigationDelegate(
//           onProgress: (int progress) {
//             // Update loading bar.
//           },
//           onPageStarted: (String url) {},
//           onPageFinished: (String url) {},
//           onWebResourceError: (WebResourceError error) {},
//           // onNavigationRequest: (NavigationRequest request) {
//           //   if (request.url.contains('')) {
//           //     return NavigationDecision.prevent;
//           //   }
//           // },
//         ),
//       )
//       ..loadRequest(Uri.parse(widget.url));
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Chrome Tab Page'),
//       ),
//       body: WebViewWidget(controller: controller),
//     );
//   }
// }
