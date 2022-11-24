import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'dart:js' as js;
import 'dart:io';

import 'package:webview_flutter/webview_flutter.dart';

class WebViewExample extends StatefulWidget {
  @override
  WebViewExampleState createState() => WebViewExampleState();
}

class WebViewExampleState extends State<WebViewExample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //js.context.callMethod('open', ['http://127.0.0.1:5500/lib/marbaraba/index.html']);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
