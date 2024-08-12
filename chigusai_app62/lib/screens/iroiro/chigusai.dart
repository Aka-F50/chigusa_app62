import 'package:flutter/material.dart';


class Chigusai extends StatelessWidget {
  static const routeName = "/chigusai";
  const Chigusai({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("描いて頂いたイラスト")),
body: SingleChildScrollView(
  child: Column(
    children: [
      const SizedBox(height: 30),
      const Text("メインイラスト",
      style: TextStyle(fontSize: 20),),
    Image.asset("assets/images/home/homeimage.jpg"),
    const Text("作：じっくりことこと"),
    const SizedBox(height: 30),
    const Text("アプリアイコン",
      style: TextStyle(fontSize: 20),),
Image.asset("assets/images/home/icon.jpg"),
const Text("作：HIMA"),
const SizedBox(height: 30),
    ],
  ),),
    );
  }
}


  




       

     
