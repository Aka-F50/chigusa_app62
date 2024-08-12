import 'package:flutter/material.dart';


class Map2 extends StatelessWidget {
  static const routeName = "/map2";
  const Map2({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("マップ")),
body: SingleChildScrollView(
  child: Column(
    children: [
      
        Image.asset('assets/images/home/map2.jpg'),
      const Text('1F',
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,),
        Image.asset('assets/images/home/1F.jpg'),
        const Text('2F',
      style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,),
        Image.asset('assets/images/home/2F.jpg'),
    
    ],
  ),
),
    );
  }
}


  




       

     
