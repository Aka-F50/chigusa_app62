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
       
        SizedBox(height: 50),
      Text('みなさんこんにちは！　15役PR班長です。\n\n最近悩みがありまして、私はすごく視力が悪くて誰かに手を振られた時に、自分に手を振られているのか、そもそも相手が誰なのか分からないのですよね。',
      style: TextStyle(fontSize: 15,),),
      Text('視力の話はともかくみなさん一度はこれ私に手を振られているのかな？振り返していいかな？となったことあるのではないでしょうか。',
      style: TextStyle(fontSize: 15,),),
      Text(' ',
      style: TextStyle(fontSize: 15,),),
      Text('そんなことはさておいて、この学校祭アプリがリリースされるまでには様々なことがありました。\nこのアプリを作っている私PR班長はプログラミングをほんの少し齧ったことのあるだけの初心者で、ほぼ何も分からない状態でスタートしましたが、知り合いの他校のアプリ開発の方に手取り足取り教えていただいて、なんとかここまで来ることができました。',
      style: TextStyle(fontSize: 15,),),
      Text('昨年度からご支援いただいているまた別の高校の方々もいらっしゃいます。もちろん、技術的な支援以外にもたくさんの人の助けがあってこの学校祭アプリは成り立っています。助けてくださった皆様には本当に感謝しても仕切れません。\n',
      style: TextStyle(fontSize: 15,),),
      Text('来年度以降このアプリがどうなっているかは分かりませんが、15役として、千種生として、これからも千種祭の繁栄を願っております。\n',
      style: TextStyle(fontSize: 15,),),
      SizedBox(height: 50),
      ],
    ),
  )
  ),
    );
  }
}


  




       

     
