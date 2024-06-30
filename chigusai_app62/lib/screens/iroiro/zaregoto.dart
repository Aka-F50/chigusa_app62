import 'package:flutter/material.dart';


class Zaregoto extends StatelessWidget {
  static const routeName = "/zaregoto";
  const Zaregoto({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("戯言")),
body:const SingleChildScrollView(
  child: Padding(
    padding: EdgeInsets.all(30),
    child: Column(
      children: [
        Text('戯言',
        style: TextStyle(
          fontSize: 25,
        ),),
        SizedBox(height: 15),
      Text('まだ考えてないよ\nからころもきつつなれにしつましあればはるばるきぬる旅をしぞおもう',
      style: TextStyle(
        fontSize: 15,
      ),),
      ],
    ),
  )
  ),
    );
  }
}


  




       

     
