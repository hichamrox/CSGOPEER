import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LoginService {
  static final String _url = "http://138.68.75.113:8802";
  Completer<WebViewController> _controller = Completer<WebViewController>();

  Completer<WebViewController> getWController() {
    return _controller;
  }

  WebView login() {
    try {
      return WebView(
        initialUrl: 'http://138.68.75.113:8802/log',
        javaScriptMode: JavaScriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      );
    } on Exception catch (err) {
      throw err;
    }
  }

  _bookmarkButton() {
    return FutureBuilder<WebViewController>(
      future: _controller.future,
      builder:
          (BuildContext context, AsyncSnapshot<WebViewController> controller) {
        if (controller.hasData) {
          return FloatingActionButton(
            onPressed: () async {
              var url = await controller.data.currentUrl();
              Scaffold.of(context).showSnackBar(
                SnackBar(content: Text('Saved $url for later reading.')),
              );
            },
            child: Icon(Icons.favorite),
          );
        }
        return Container();
      },
    );
  }
}
