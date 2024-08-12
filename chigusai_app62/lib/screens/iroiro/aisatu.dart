import 'package:flutter/material.dart';


class Aisatu extends StatelessWidget {
  static const routeName = "/aisatu";
  const Aisatu({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("挨拶")),
body: SingleChildScrollView(
  child:Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
  child: Column(
    children: [
      
      Image.asset("assets/images/home/S__15613976.jpg"),
      const Text("作：かわかじかのたたき"),
      const SizedBox(height: 25,),
      
      const Text("校長挨拶",
      style: TextStyle(fontSize: 20),),
      const Text('いよいよ「千種祭」が始まります。体育祭、文化祭、そして全校企画、とても楽しみにしています。\n昨年は、4年ぶりに完全なる形での千種祭が復活しました。文化祭の一般公開の来場者は約6千人と大盛況でした。\n今年は、特にテーマを設定しないと聞いています。きっと今年は、それぞれの胸の内に秘めたテーマに基づく自由で創造性あふれる様々な新しい企画が登場するのではないかと期待を膨らましてしまいます。\nこれまでの仲間と話し合いながら創り上げてきた成果を思う存分発揮し、今年の「千種祭」が皆さんにとって最高の一生の思い出となることを願っています。'),
      const SizedBox(height: 25,),
      const Text("生徒会長挨拶",
      style: TextStyle(fontSize: 20),),
      const SizedBox(height: 25,),
      const Text("実行委員長挨拶",
      style: TextStyle(fontSize: 20),),
    
    
    ],
  ),),),
    );
  }
}


  




       

     
