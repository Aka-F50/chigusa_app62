import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

import 'package:chigusai_app/themes/app_color.dart';

class ContactScreen extends StatefulWidget {
  static const routeName = "/contact-screen";

  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  bool _pageIsLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("お問い合わせ")),
      body: Stack(
        children: [
          WebView(
            initialUrl: 'https://docs.google.com/forms/d/1kvyK9Nx6e6LKz-2WUcIL-rNC6IJOCCc_aJRG3XJQEYw/edit',
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: (String utl) {
              setState(() {
                _pageIsLoading = false;
              });
            },
          ),
          if (_pageIsLoading)
            Container(
              height: double.infinity,
              width: double.infinity,
              color: AppColors.scaffoldBackgroundColor,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }
}
