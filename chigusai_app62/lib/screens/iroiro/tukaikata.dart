import 'package:flutter/material.dart';


class Tukaikata extends StatelessWidget {
  static const routeName = "/tukaikata";
  const Tukaikata({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("使い方ガイド")),
body:const SingleChildScrollView(
  child: Column(
    children: [SizedBox(height: 30),
    Text('     使い方ガイド',
    style: TextStyle(fontSize: 20),),],
  ),),
    );
  }
}


  




       

     
