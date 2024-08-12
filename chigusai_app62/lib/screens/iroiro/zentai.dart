import 'package:flutter/material.dart';


class Zentai extends StatelessWidget {
  static const routeName = "/zentai";
  const Zentai({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("全体結果")),
body: SingleChildScrollView(
  child: Column(
    children:[const SizedBox(height: 30),
    Image.asset('assets/images/home/無題70_20240421101804.png'),
    const SizedBox(height: 30),
    const Text('グランプリ'),
    const Text('展示、演劇、デコ、垂れ幕etc'),
   ],
  )),
    );
  }
}

