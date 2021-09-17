import 'package:csgopeer/services/login_service.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatelessWidget {
  final LoginService service = new LoginService();
  WebView wv;
  WebViewPage() {
    wv = service.login();
  }
  @override
  Widget build(BuildContext context) {
    Container c = Container(width: double.infinity, height: 600, child: wv);
    return c;
  }

  Future<WebViewController> getController() {
    return service.getWController().future;
  }
}
