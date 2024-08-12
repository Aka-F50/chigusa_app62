import 'package:flutter/material.dart';


class Tukaikata extends StatelessWidget {
  static const routeName = "/tukaikata";
  const Tukaikata({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("使い方ガイド")),
body: SingleChildScrollView(
  child: Column(
    children: [
      const SizedBox(height: 20,),
    Image.asset('assets/images/home/gaido1.jpg'),
    const Text('1'),
   const SizedBox(height: 20,),
Image.asset('assets/images/home/gaido2.jpg'),
const Text('2'),
const SizedBox(height: 20,),
Image.asset('assets/images/home/gaido3.jpg'),
const Text('3'),
const SizedBox(height: 20,),
    ]
  ),),
    );
  }
}


  




       

     
