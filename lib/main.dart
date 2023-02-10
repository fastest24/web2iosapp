import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:colours/colours.dart';

MaterialColor gojekSwatch = Colours.swatch('#2c3b67');

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WebViewApp(),
    ),
  );
}

//test1
class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse(
            'https://demo.busisoft.in/MobileApplication/CustomerRoute?path=CustomerSignIn'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: gojekSwatch,
        elevation: 0.00,
        toolbarHeight: 5,
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
