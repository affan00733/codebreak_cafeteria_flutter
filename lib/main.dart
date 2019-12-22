



import 'dart:async';

import 'package:webview_flutter/webview_flutter.dart';

import 'package:flutter/material.dart';
// import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
  debugShowCheckedModeBanner: false,
  theme : ThemeData(
    primaryColor: Colors.purple
  )
));

class MyApp extends StatefulWidget {
  @override 
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  final Completer<WebViewController> _controller = Completer<WebViewController>();

  @override 
  Widget build(BuildContext context){
    return  Scaffold(
      // appBar: AppBar(
      //   title: Text("codebreak"),
        
      // ),
    body : WebView(
      
      initialUrl: 'https://4ab33e81.ngrok.io',
      onWebViewCreated: (WebViewController webViewController){
        _controller.complete(webViewController);
      },
      // url: 'https://github.com/iampawan/FlutterWidgets/blob/master/lib/Episode6_WebView/webview_example.dart',
    )
    );
  }
}
