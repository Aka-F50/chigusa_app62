import'package:flutter/material.dart';


class Yaku extends StatelessWidget {
  static const routeName = "/yaku";
  const Yaku({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("15役について")),
body: SingleChildScrollView(
  child: Column(
    children: [
 Image.asset("assets/images/home/yaku.jpg"),
 const Padding(padding:EdgeInsets.only(right: 15,left: 15) ,
 child: Column(children: [
   Text('15役と学校祭実行委員会は協力関係にあり、共に学校祭の運営を行っています。\n学校祭審査委員会は15役、学実とは独立した組織で、展示、演劇、デコ、垂れ幕などの審査を行っています。'),
   SizedBox(height: 20,),
   Text('15役',style: TextStyle(fontSize: 20),),
   SizedBox(height: 10,),
   Text('学校祭実行委員長  管轄:学校祭',style: TextStyle(fontSize: 15),),
   Text('学校祭の統括'),
   SizedBox(height: 50,),
   Text('学校祭副実行委員長  管轄:資材、デコ',style: TextStyle(fontSize: 15),),
   Text('15役のサポート'),
   SizedBox(height: 10,),
   Text('資材班長　　管轄:資材',style: TextStyle(fontSize: 15),),
   Text('工具の管理、廃材配布、資材注文、リサイクルステーションの設置、備品移動復元'),
   SizedBox(height: 10,),
   Text('デコ班長　　管轄:デコ',style: TextStyle(fontSize: 15),),
   Text('デコリ、副デコリの統括、連絡\nデコリ会のレジュメ作成'),
   SizedBox(height: 50,),
   Text('体育祭実行委員長  管轄:体育祭',style: TextStyle(fontSize: 15),),
   Text('体育祭の内容決定\nブロパフォ、応援団の統括\n体育祭当日の運営'),
   SizedBox(height: 10,),
   Text('体育祭班長  管轄:体育祭',style: TextStyle(fontSize: 15),),
   Text('体育祭実行委員長のサポート\n体育祭に関わるもののサポート\n体育祭実行委員長と一緒に競技の考案\n虎の巻作成'),
   SizedBox(height: 50,),
   Text('文化祭実行委員長  管轄:展示、演劇、有志',style: TextStyle(fontSize: 15),),
   Text('展示・演劇・有志の統括やその他文化祭で行われる企画のサポート、文化祭全体を統括'),
   SizedBox(height: 10,),
   Text('展示班長  管轄:展示、縁日',style: TextStyle(fontSize: 15),),
   Text('1.2年生のHR制作である展示を統括\n各クラスの展示監督と綿密な連携を取り、全18クラスの展示が成功するよう努めている。'),
   SizedBox(height: 10,),
   Text('ステージ班長  管轄:演劇',style: TextStyle(fontSize: 15),),
   Text('3年生のHR制作であるステージ演劇を統括\n各クラスの舞台監督と舞監会議などを通して情報共有をし連携をとる。\nステージ演劇が成功するように活動している。'),
   SizedBox(height: 10,),
   Text('有志班長  管轄:有志発表',style: TextStyle(fontSize: 15),),
   Text('有志発表出演者の募集や企画書の回収\n委員会と連携した当日運営'),
   SizedBox(height: 50,),
   Text('全校企画実行委員長  管轄:三本立て、歌会、FF',style: TextStyle(fontSize: 15),),
   Text('全校企画の統括'),
   SizedBox(height: 10,),
   Text('三本立て班長  管轄:三本立て',style: TextStyle(fontSize: 15),),
   Text('三本立て主催者のサポートなど'),
    SizedBox(height: 10,),
   Text('歌会班長  管轄:歌会',style: TextStyle(fontSize: 15),),
   Text('歌会を成功させる'),
   SizedBox(height: 10,),
   Text('FF班長  管轄:FF',style: TextStyle(fontSize: 15),),
   Text('生徒達を労う最後のイベントであるFFを、FF班長が中心になって作り上げていく'),
   SizedBox(height: 50,),
   Text('広報実行委員長',style: TextStyle(fontSize: 15),),
   Text('管轄:学校祭グッズ、3年のクラス演劇の垂れ幕、各HRのPR'),
   SizedBox(height: 10,),
   Text('PR班長',style: TextStyle(fontSize: 15),),
   Text('管轄:管轄:学校祭アプリ、学校祭パンフレット、PRイラスト、アーチ装飾、千種祭垂れ幕、校内装飾'),
   SizedBox(height: 60,),
 ],)
      ),
      
    
    ],
  ),),
    );
  }
}


  




       

     
