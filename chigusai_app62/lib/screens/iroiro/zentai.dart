import 'package:flutter/material.dart';


class Zentai extends StatelessWidget {
  static const routeName = "/zentai";
  const Zentai({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("全体結果")),
body:const SingleChildScrollView(
  child: Column(
    children:[SizedBox(height: 30),
   ],
  )),
    );
  }
}

