import 'package:flutter/material.dart';
class Menucard extends StatelessWidget {
  const Menucard({required this.title,required this.onTap, required this.img,super.key});

  final String title;
  final String img;
  final dynamic onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child:
    Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
      child: Container(
      width: double.infinity, //横無限
      height: 150,
      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.cover,
        )),
        child: Container(

      width: double.infinity, //横無限
      height: 150,
      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Color.fromARGB(150, 0, 0, 0),
                    ],
                    stops: [
                      0.7,
                      1,
                    ],
                  ), 
        ),
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical:15),
        child: Align(alignment: Alignment.bottomLeft,
                   child: Text(title,style: const TextStyle(color:Colors.white,fontSize: 23,fontWeight: FontWeight.bold))
      )
      )
        ),
    ),),
        );
  }
}
