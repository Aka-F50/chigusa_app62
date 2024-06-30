import 'package:chigusai_app/screens/iroiro/kitei/kitei0.dart';
import 'package:chigusai_app/screens/iroiro/kitei/kitei1.dart';
import 'package:chigusai_app/screens/iroiro/kitei/kitei2.dart';
import 'package:chigusai_app/screens/iroiro/kitei/kitei3.dart';
import 'package:chigusai_app/screens/iroiro/kitei/kitei4.dart';
import 'package:chigusai_app/screens/iroiro/kitei/kitei5.dart';
import 'package:chigusai_app/screens/iroiro/kitei/kitei6.dart';
import 'package:flutter/material.dart';



class Kitei extends StatelessWidget {
  static const routeName = "/kitei";
  const Kitei({super.key});

 Widget _risuto({required String lavel,required void Function() onPressed}){
  return ElevatedButton( 
                    onPressed: onPressed,
                    style: ElevatedButton.styleFrom(
                      maximumSize: const Size(70, 70),
                      backgroundColor: const Color.fromARGB(255, 237, 235, 237), 
                      fixedSize: const Size(120, 120),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),),
                    ),
                    child: Text(lavel,
                    style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 16,
                    ),
                    ),
                  );}
                  

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("規定")),
body:ListView(
 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      children: [
  const SizedBox(height: 15),
  _risuto(lavel: '表紙目次', onPressed: () => Navigator.of(context).pushNamed(Kitei0.routeName),),
  const SizedBox(height: 15),
  _risuto(lavel: '学校祭', onPressed: () => Navigator.of(context).pushNamed(Kitei1.routeName),),
  const SizedBox(height: 15),
  _risuto(lavel: '体育祭', onPressed: () => Navigator.of(context).pushNamed(Kitei2.routeName),),
  const SizedBox(height: 15),
  _risuto(lavel: '文化祭', onPressed: () => Navigator.of(context).pushNamed(Kitei3.routeName),),
  const SizedBox(height: 15),
  _risuto(lavel: '全校企画', onPressed: () => Navigator.of(context).pushNamed(Kitei4.routeName),),
  const SizedBox(height: 15),
  _risuto(lavel: 'PR・資材・デコ', onPressed: () => Navigator.of(context).pushNamed(Kitei5.routeName),),
  const SizedBox(height: 15),
  _risuto(lavel: '学祭賞・減点', onPressed: () => Navigator.of(context).pushNamed(Kitei6.routeName),),

    ],),);
    
  }
}


  




       

     
