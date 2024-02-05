import 'package:flutter/material.dart';
import "package:webview_universal/webview_universal.dart";

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  WebViewController webViewController = WebViewController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(
            onPressed: () {
              webViewController.init(
                context: context,
                setState: setState,
                uri: Uri.parse("https://flutter.dev"),
              );
            },
            child: const Text("View"),
          ),
        ],
      ),
      body: WebView(
        controller: webViewController,
      ),
    );
  }
}
