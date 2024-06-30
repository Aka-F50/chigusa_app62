import 'package:flutter/material.dart';
import 'package:chigusai_app/screens/iroiro/tenzikitei/tenzikitei1.dart';
import 'package:chigusai_app/screens/iroiro/tenzikitei/tenzikitei2.dart';
import 'package:chigusai_app/screens/iroiro/tenzikitei/tenzikitei3.dart';
import 'package:chigusai_app/screens/iroiro/tenzikitei/tenzikitei4.dart';
import 'package:chigusai_app/screens/iroiro/tenzikitei/tenzikitei5.dart';
import 'package:chigusai_app/screens/iroiro/tenzikitei/tenzikitei6.dart';
import 'package:chigusai_app/screens/iroiro/tenzikitei/tenzikitei7.dart';
import 'package:chigusai_app/screens/iroiro/tenzikitei/tenzikitei8.dart';
import 'package:chigusai_app/screens/iroiro/tenzikitei/tenzikitei9.dart';




class Tenzikitei extends StatelessWidget {
  static const routeName = "/tenzikitei";
  const Tenzikitei({super.key});

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("展示規定")),
body:ListView(
 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      children: [
  const SizedBox(height: 15),
  _risuto(lavel: '表紙・目次', onPressed: () => Navigator.of(context).pushNamed(Tenzikitei1.routeName),),
  const SizedBox(height: 15),
  _risuto(lavel: '展示とは・一年の動き', onPressed: () => Navigator.of(context).pushNamed(Tenzikitei2.routeName),),
  const SizedBox(height: 15),
  _risuto(lavel: '討論', onPressed: () => Navigator.of(context).pushNamed(Tenzikitei3.routeName),),
  const SizedBox(height: 15),
  _risuto(lavel: '資材収集', onPressed: () => Navigator.of(context).pushNamed(Tenzikitei4.routeName),),
  const SizedBox(height: 15),
  _risuto(lavel: '作業方法', onPressed: () => Navigator.of(context).pushNamed(Tenzikitei5.routeName),),
  const SizedBox(height: 15),
  _risuto(lavel: '組み立て・工具', onPressed: () => Navigator.of(context).pushNamed(Tenzikitei6.routeName),),
const SizedBox(height: 15),
  _risuto(lavel: '減点', onPressed: () => Navigator.of(context).pushNamed(Tenzikitei7.routeName),),
  const SizedBox(height: 15),
  _risuto(lavel: '展示賞', onPressed: () => Navigator.of(context).pushNamed(Tenzikitei8.routeName),),
  const SizedBox(height: 15),
  _risuto(lavel: '展示班長の独り言', onPressed: () => Navigator.of(context).pushNamed(Tenzikitei9.routeName),),

    ],),);
    
  }
}


  




       

     
