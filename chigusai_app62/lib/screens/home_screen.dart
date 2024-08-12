import 'package:carousel_slider/carousel_slider.dart';
import 'package:chigusai_app/screens/iroiro/tenzikitei/gakusinn/gakusin.dart';
import 'package:chigusai_app/screens/iroiro/kitei/kitei.dart';
import 'package:chigusai_app/screens/home/map2.dart';
import 'package:chigusai_app/screens/iroiro/tenzikitei/tennzikittei.dart';
import 'package:chigusai_app/screens/iroiro/tukaikata.dart';
import 'package:chigusai_app/screens/shift/shift_screen.dart';
import 'package:dots_indicator/dots_indicator.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:chigusai_app/widgets/carouselcontainerbox.dart';
import 'package:chigusai_app/widgets/card.dart';
//import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:firebase_messaging/firebase_messaging.dart';
//import 'package:intl/date_symbols.dart';

import 'notification/notification_screen.dart';

import '../widgets/main_drawer.dart';
import '../bottom_navigation.dart';

import '../providers/login_data_provider.dart';

import '../notification_manager.dart';

import 'notification/send_notification_screen.dart';

//import 'home/comment_box_screen.dart';
//import 'home/map_screen.dart';
//import 'home/pr_video/pr_video_screen.dart';
//import 'home/pr_video/show_pr_video_screen.dart';
import 'taiikusai/result_screen.dart';
//import 'home/schedule/schedule_screen.dart';
import 'home/theme_song/theme_song_screen.dart';
import 'taiikusai/update_result_screen.dart';
import 'package:chigusai_app/screens/iroiro/zaregoto.dart';
//import 'iroiro/zentai.dart';
import 'iroiro/chigusai.dart';
import 'iroiro/aisatu.dart';
import 'iroiro/yaku.dart';

class HomeScreen extends ConsumerStatefulWidget{
  const HomeScreen({super.key});
  static const routeName = "/home-screen";
 

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreen();
}
class _HomeScreen extends ConsumerState<HomeScreen> {
    int _current = 0;

  Future _init(WidgetRef ref) async {
    //init login data
    LoginDataManager.setLoginDataProviderDataFromLocal(ref);
    //init local notification
    NotificationManager.initializeLocNotification();
    NotificationManager.requestPermissions();
    //handle background message
    FirebaseMessaging.onBackgroundMessage(NotificationManager.firebaseMessagingBackgroundHandler);
  }
  
//ボタンテンプレ⇩/
//体育祭、文化祭、全企ボタン
Widget _textbutton({required String lavel,required void Function() onPressed}){
  return TextButton( 
                    onPressed: onPressed,
                    style: TextButton.styleFrom(
                      maximumSize: const Size(200, 150),
                      backgroundColor: const Color.fromARGB(255, 68, 21, 150),
                      side: const BorderSide(color: Color.fromARGB(255, 255, 255, 255)), 
                      fixedSize: const Size(120, 120),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),
                    ),
                    child: Text(lavel,
                    style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    ),
                    ),
                  );}


//シフト、規定ボタン
Widget _textbuttondabe({required String lavel,required void Function() onPressed,required IconData icon}){
  return TextButton( 
                    onPressed: onPressed,
                    style: TextButton.styleFrom(
                      maximumSize: const Size(150, 300),
                      backgroundColor: const Color.fromARGB(255, 13, 9, 149),
                      side: const BorderSide(color: Color.fromARGB(255, 171, 185, 217)), 
                      fixedSize: const Size(90, 90),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),),
                    ),
                    child: Column(
                      
                    children: [
                      const SizedBox(height: 15),
                      Icon(icon,
                      color:const Color.fromARGB(255, 255, 255, 255),
                      ),
                      Text(lavel,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      ),
                    ],
                  ),);}

//15役ボタン
Widget _textbuttonnano({required String lavel,required void Function() onPressed,required IconData icon}){
  return TextButton( 
                    onPressed: onPressed,
                    style: TextButton.styleFrom(
                      maximumSize: const Size(150, 300),
                      backgroundColor: const Color.fromARGB(255, 13, 9, 149),
                      side: const BorderSide(color: Color.fromARGB(255, 171, 185, 217)), 
                      fixedSize: const Size(90, 90),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),),
                    ),
                    child:
                    Column(
                    children: [
                      Icon(icon,
                      color:const Color.fromARGB(255, 255, 255, 255),
                      ),
                      Text(lavel,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      ),
                    ],
                  ),);}

//テーマソング、体育祭結果、使い方ガイドボタン
Widget _outlindedbutton({required String lavel,required IconData icon,required void Function() onPressed}){
  return  OutlinedButton(
                    onPressed:  onPressed,
                    style: OutlinedButton.styleFrom(
                      backgroundColor:  Colors.transparent,
                      side: const BorderSide(color: Colors.transparent,
                    ),
                    fixedSize: const Size(100, 70),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),
                    ),
                  child: Column(
                    children: [
                      Icon(icon,
                      color:const Color.fromARGB(255, 121, 72, 207),
                      ),
                      Text(lavel,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 91, 91, 91),
                      ),
                      ),
                    ],
                  ),
  );}

//マップ、全体結果、戯言ボタン
Widget _outlindedbuttondesu({required String lavel,required IconData icon,required void Function() onPressed}){
  return  OutlinedButton(
                    onPressed:  onPressed,
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      side: const BorderSide(color: Colors.transparent,
                    ),
                    fixedSize: const Size(120, 50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),
                    ),
                  child: Column(
                    children: [
                      Icon(icon,
                      color:const Color.fromARGB(255, 121, 72, 207),
                      ),
                      Text(lavel,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 91, 91, 91),
                      ),
                      ),
                    ],
                  ),
  );}

  //ここから
  @override
  Widget build(BuildContext context/*, WidgetRef ref*/) {
    _init(ref);
    return Scaffold(
      appBar: AppBar(
        title: const Text("第62回千種祭"),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pushNamed(NotificationScreen.routeName),
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      drawer: const MainDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: Column(
            children: [        
              CarouselSlider(
            items:  [
               CarouselContainerbox(title: '千種祭',img: 'assets/images/home/homeimage.jpg',onTap:() => Navigator.of(context).pushNamed(Chigusai.routeName),),
               CarouselContainerbox(title: '体育祭',img: 'assets/images/home/taiikusai.jpg',onTap:  () => ref.read(bottomNavigationProvider.notifier).set(1),),
               CarouselContainerbox(title: '文化祭',img: 'assets/images/home/bunkasai.jpg',onTap:  () => ref.read(bottomNavigationProvider.notifier).set(2),),
               CarouselContainerbox(title: '全校企画',img: 'assets/images/home/zenkou.jpg',onTap:  () => ref.read(bottomNavigationProvider.notifier).set(3),),
  
            ],

            options: CarouselOptions(
              height: 280, //高さ
              initialPage: 0, //最初に表示されるページ
              autoPlay: true,//自動でスライドしてくれるか
              viewportFraction: 0.95,//各カードの表示される範囲の割合
              enableInfiniteScroll: true,//最後のカードから最初のカードへの遷移
              autoPlayInterval: const Duration(seconds: 8),//カードのインターバル
              autoPlayAnimationDuration: const Duration(milliseconds: 400),
                                            //スライドが始まって終わるまでの時間
              onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }
            ),
          ),
          const SizedBox(
                height: 5,
              ),
          DotsIndicator(
             dotsCount: 4,
             position: _current,
             decorator: const DotsDecorator(
              size: Size.square(6.0),
              activeSize: Size.square(6.0),
              )
             ),
              //Image.asset('assets/images/無題62.png'),
               if (ref.watch(currentLoginStatusProvider) == CurrentLoginStatus.notLoggedIn )
              const SizedBox(height: 1),
               if (ref.watch(currentLoginStatusProvider) == CurrentLoginStatus.notLoggedIn )
              const SizedBox(width: double.infinity, child: Text('    イベント', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
               if (ref.watch(currentLoginStatusProvider) == CurrentLoginStatus.notLoggedIn )
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 0),
                  if (ref.watch(currentLoginStatusProvider) == CurrentLoginStatus.notLoggedIn )
                 _textbutton(lavel: '体育祭', onPressed: () => ref.read(bottomNavigationProvider.notifier).set(1),),
                  const SizedBox(width: 0),
                   if (ref.watch(currentLoginStatusProvider) == CurrentLoginStatus.notLoggedIn )
                  _textbutton(lavel: '文化祭', onPressed: () => ref.read(bottomNavigationProvider.notifier).set(2),),
                  const SizedBox(width: 0),
                   if (ref.watch(currentLoginStatusProvider) == CurrentLoginStatus.notLoggedIn )
                  _textbutton(lavel: '全校企画', onPressed: () => ref.read(bottomNavigationProvider.notifier).set(3),),
                  const SizedBox(width: 0),
                  
                ],
              ),
              const SizedBox(height: 10),
              const SizedBox(width: double.infinity, 
              child: Text('    機能', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _outlindedbuttondesu(lavel: 'マップ', onPressed: () => Navigator.of(context).pushNamed(Map2.routeName), icon: Icons.map),
                  _outlindedbuttondesu(lavel: '全体結果', onPressed:  () => Navigator.of(context).pushNamed(ResultScreen.routeName), icon: Icons.emoji_flags),  
                  _outlindedbuttondesu(lavel: '戯言', onPressed: () => Navigator.of(context).pushNamed(Zaregoto.routeName),icon: Icons.record_voice_over), 
            ],),

            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   _outlindedbutton(lavel: 'テーマ\nソング', onPressed: () => Navigator.of(context).pushNamed(ThemeSongScreen.routeName),icon: Icons.music_note),
                   _outlindedbutton(lavel: '体育祭\n  結果', onPressed: () => Navigator.of(context).pushNamed(ResultScreen.routeName),icon: Icons.emoji_events ), 
                  _outlindedbutton(lavel: '使い方\nガイド', onPressed: () => Navigator.of(context).pushNamed(Tukaikata.routeName),icon: Icons.question_mark ), 
                   
            ],),
            const SizedBox(height: 5),
            if (ref.watch(currentLoginStatusProvider) != CurrentLoginStatus.notLoggedIn )
            const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  if (ref.watch(currentLoginStatusProvider) != CurrentLoginStatus.notLoggedIn )
                   _textbuttondabe(lavel: 'シフト', onPressed: () => Navigator.of(context).pushNamed(ShiftScreen.routeName), icon: Icons.event_note),
                    
                  if (ref.watch(currentLoginStatusProvider) != CurrentLoginStatus.notLoggedIn)
                 _textbuttondabe(lavel: '規定', onPressed: () => Navigator.of(context).pushNamed(Kitei.routeName), icon: Icons.book),

                   if (ref.watch(currentLoginStatusProvider) != CurrentLoginStatus.notLoggedIn)
                  _textbuttondabe(lavel: '展示', onPressed: () => Navigator.of(context).pushNamed(Tenzikitei.routeName),icon: Icons.library_books),

                  if (ref.watch(currentLoginStatusProvider) != CurrentLoginStatus.notLoggedIn)
                 _textbuttondabe(lavel: '学審 ', onPressed: () => Navigator.of(context).pushNamed(Gakusin.routeName),icon: Icons.collections_bookmark_outlined ), 
                ],
              ),
          
          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [  
                if (ref.watch(currentLoginStatusProvider) == CurrentLoginStatus.loggedInAdmin)
                _textbuttonnano(lavel: '全体\n更新', icon: Icons.access_alarm, onPressed:  () => Navigator.of(context).pushNamed(ResultScreen.routeName)),

                    if (ref.watch(currentLoginStatusProvider) == CurrentLoginStatus.loggedInAdmin)
                    _textbuttonnano(lavel: '体育祭\n  更新', icon: Icons.sports, onPressed:  () => Navigator.of(context).pushNamed(UpdateResultScreen.routeName),),
                 
                    if (ref.watch(currentLoginStatusProvider) == CurrentLoginStatus.loggedInAdmin)
                    _textbuttonnano(lavel: '通知を\n  送る', icon: Icons.send, onPressed: () => Navigator.of(context).pushNamed(SendNotificationScreen.routeName),),
                  
                ],
              ),

             
                  /*if (ref.watch(currentLoginStatusProvider) != CurrentLoginStatus.notLoggedIn)
                    _functionButton(
                      text: "PR動画",
                      icon: Icons.play_arrow,
                      onPressed: () => Navigator.of(context).pushNamed(ShowPRVideoScreen.routeName),
                    )*/
                    if (ref.watch(currentLoginStatusProvider) != CurrentLoginStatus.notLoggedIn )
            const SizedBox(height: 0),

              SizedBox(
                    height: 200,
                    child: ListView(
                        itemExtent: 300, //横幅
                        scrollDirection: Axis.horizontal, //横スクロール
                        padding: const EdgeInsets.only(left:5),
                        children:  [
                          Menucard(title: '挨拶', img: 'assets/images/home/S__15613976.jpg', onTap:  () => Navigator.of(context).pushNamed(Aisatu.routeName)),
                          Menucard(title: '15役', img: 'assets/images/home/15yaku.JPG', onTap:  () => Navigator.of(context).pushNamed(Yaku.routeName),),
                          ]
                        ),),
            ]
            
          ),
        ),
      ),
      );
    
  }
}
