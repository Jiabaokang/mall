import 'package:flutter/material.dart';
import 'package:mall/constant/app_strings.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:mall/constant/app_colors.dart';

class WebViewPage extends StatelessWidget {
  String bannerDetailUrl;
  var bannerName;

  WebViewPage(this.bannerDetailUrl, this.bannerName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.COLOR_APPBAR_BG,
        title: Text(bannerName),
        centerTitle: true,
      ),
      body: WebviewScaffold(
        url: bannerDetailUrl.isEmpty ? AppStrings.GITHUB : bannerDetailUrl,
        withZoom: false,
        withLocalStorage: true,
        withJavascript: true,
      ),
    );
  }
}
