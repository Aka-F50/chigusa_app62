import 'package:chigusai_app/screens/iroiro/chigusai.dart';
import 'package:chigusai_app/screens/iroiro/zentai.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

//notification
import 'screens/notification/notification_setup.dart';

//themes/
import 'themes/app_theme.dart';

import 'bottom_navigation.dart';
//screens/
import 'screens/home_screen.dart';
import 'screens/bunkasai/bunkasai_screen.dart';
import 'screens/zenkou/zenkoukikaku_screen.dart';
//notification/
import 'screens/notification/notification_detail_screen.dart';
import 'screens/notification/notification_screen.dart';
import 'screens/notification/send_notification_screen.dart';
//drawer/
import 'screens/drawer/contact_screen.dart';
import 'screens/drawer/information_screen.dart';
import 'screens/drawer/login_screen.dart';
import 'screens/drawer/pamphlet_screen.dart';
import 'screens/drawer/privacy_policy_screen.dart';
import 'screens/drawer/terms_of_service_screen.dart';
//home/
import 'screens/home/comment_box_screen.dart';
import 'screens/home/map_screen.dart';
//import 'screens/home/pr_video/pr_video_screen.dart';
import 'screens/home/schedule/schedule_screen.dart';
import 'screens/home/theme_song/theme_song_screen.dart';
import 'package:just_audio/just_audio.dart';
//import 'screens/home/pr_video/show_pr_video_screen.dart';
//bunkasai/
import 'screens/bunkasai/tenji/tenji_detail_screen.dart';
import 'screens/bunkasai/engeki/engeki_detail_screen.dart';
import 'screens/bunkasai/yushi/yushi_detail_screen.dart';
import 'screens/bunkasai/bukatsu/bukatsu_detail_screen.dart';
//taiikusai/
import 'screens/taiikusai/taiikusai_detail_screen.dart';
import 'screens/taiikusai/result_screen.dart';
import 'screens/taiikusai/update_result_screen.dart';
import 'screens/taiikusai/taiikusai_screen.dart';
//zenkou/
import 'screens/zenkou/bihin_screen.dart';
import 'screens/zenkou/sanbon/sanbon_screen.dart';
import 'screens/zenkou/sanbon/sanbon_detail_screen.dart';
import 'screens/zenkou/encore/encore_screen.dart';
import 'screens/zenkou/utakai/utakai_screen.dart';
import 'screens/zenkou/utakai/utakai_detail_screen.dart';
import 'screens/zenkou/ff/ff_screen.dart';
import 'screens/zenkou/ff/mime_screen.dart';
import 'screens/zenkou/ff/hanabi_screen.dart';
//shift/
import 'screens/shift/shift_screen.dart';
import 'screens/shift/taiikusai/taiikusai_shift_screen.dart';
import 'screens/shift/bunkasai_shift_screen.dart';
//iroiro/
import 'screens/iroiro/zaregoto.dart';
import 'screens/iroiro/tukaikata.dart';
import 'screens/home/map2.dart';
import 'screens/iroiro/aisatu.dart';
import 'screens/iroiro/yaku.dart';


import 'screens/iroiro/kitei/kitei0.dart';
import 'screens/iroiro/kitei/kitei.dart';
import 'screens/iroiro/kitei/kitei1.dart';
import 'screens/iroiro/kitei/kitei2.dart';
import 'screens/iroiro/kitei/kitei3.dart';
import 'screens/iroiro/kitei/kitei4.dart';
import 'screens/iroiro/kitei/kitei5.dart';
import 'screens/iroiro/kitei/kitei6.dart';
import 'screens/iroiro/tenzikitei/tennzikittei.dart';
import 'screens/iroiro/tenzikitei/tenzikitei1.dart';
import 'screens/iroiro/tenzikitei/tenzikitei2.dart';
import 'screens/iroiro/tenzikitei/tenzikitei3.dart';
import 'screens/iroiro/tenzikitei/tenzikitei4.dart';
import 'screens/iroiro/tenzikitei/tenzikitei5.dart';
import 'screens/iroiro/tenzikitei/tenzikitei6.dart';
import 'screens/iroiro/tenzikitei/tenzikitei7.dart';
import 'screens/iroiro/tenzikitei/tenzikitei8.dart';
import 'screens/iroiro/tenzikitei/tenzikitei9.dart';
import 'screens/iroiro/tenzikitei/gakusinn/gakusin.dart';
//import 'screens/iroiro/zentai.dart';

void main() async {
  _init();
  runApp(const ProviderScope(child: MyApp()));
  
}

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  NotificationSetup.fcmSetup();
  await AudioPlayer.clearAssetCache();
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chigusai App',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      themeMode: ThemeMode.system,
      home: BottomNavigation(),
      routes: {
        HomeScreen.routeName: (ctx) => const HomeScreen(),
        BunkasaiScreen.routeName: (ctx) => const BunkasaiScreen(),
        ZenkoukikakuScreen.routeName: (ctx) => const ZenkoukikakuScreen(),
        TaiikusaiScreen.routeName: (ctx) => const TaiikusaiScreen(),
        //notification
        NotificationScreen.routeName: (ctx) => const NotificationScreen(),
        NotificationDetailScreen.routeName: (ctx) => const NotificationDetailScreen(),
        SendNotificationScreen.routeName: (ctx) => const SendNotificationScreen(),
        //drawer
        ContactScreen.routeName: (ctx) => const ContactScreen(),
        InformationScreen.routeName: (ctx) => const InformationScreen(),
        LoginScreen.routeName: (ctx) => const LoginScreen(),
        PamphletScreen.routeName: (ctx) => const PamphletScreen(),
        PrivacyPolicyScreen.routeName: (ctx) => const PrivacyPolicyScreen(),
        TermsOfServiceScreen.routeName: (ctx) => const TermsOfServiceScreen(),
        //home
        CommentBoxScreen.routeName: (ctx) => const CommentBoxScreen(),
        MapScreen.routeName: (ctx) => const MapScreen(),
        ScheduleScreen.routeName: (ctx) => const ScheduleScreen(),
        ThemeSongScreen.routeName: (ctx) => const ThemeSongScreen(),
        //bunkasai
        TenjiDetailScreen.routeName: (ctx) => const TenjiDetailScreen(),
        EngekiDetailScreen.routeName: (ctx) => const EngekiDetailScreen(),
        YushiDetailScreen.routeName: (ctx) => const YushiDetailScreen(),
        BukatsuDetailScreen.routeName: (ctx) => const BukatsuDetailScreen(),
        //taiikusai/
        TaiikusaiDetailScreen.routeName: (ctx) => const TaiikusaiDetailScreen(),
        UpdateResultScreen.routeName: (ctx) => const UpdateResultScreen(),
        ResultScreen.routeName: (ctx) => const ResultScreen(),
        //zenkou/
        BihinScreen.routeName: (ctx) => const BihinScreen(),
        SabbonScreen.routeName: (ctx) => const SabbonScreen(),
        EncoreScreen.routeName: (ctx) => const EncoreScreen(),
        UtakaiScreen.routeName: (ctx) => const UtakaiScreen(),
        FFScreen.routeName: (ctx) => const FFScreen(),
        UtakaiDetailScreen.routeName: (ctx) => const UtakaiDetailScreen(),
        SanbonDetailScreen.routeName: (ctx) => const SanbonDetailScreen(),
        MimeScreen.routeName: (ctx) => const MimeScreen(),
        HanabiScreen.routeName: (ctx) => const HanabiScreen(),
        //shift/
        ShiftScreen.routeName: (ctx) => const ShiftScreen(),
        TaiikusaiShiftScreen.routeName: (ctx) => const TaiikusaiShiftScreen(),
        BunkasaiShiftScreen.routeName: (ctx) => const BunkasaiShiftScreen(),
        //iroiro/
        Zaregoto.routeName: (ctx) => const Zaregoto(),
        Tukaikata.routeName:(ctx) => const Tukaikata(),
        Map2.routeName:(ctx) => const Map2(),
        Chigusai.routeName:(ctx) => const Chigusai(),
        Aisatu.routeName:(ctx) => const Aisatu(),
        Yaku.routeName:(ctx) => const Yaku(),


        //これきもいから誰か何とかして/
        Kitei.routeName:(ctx) => const Kitei(),
        Kitei0.routeName:(ctx) => const Kitei0(),
        Kitei1.routeName:(ctx) => const Kitei1(),
        Kitei2.routeName:(ctx) => const Kitei2(),
        Kitei3.routeName:(ctx) => const Kitei3(),
        Kitei4.routeName:(ctx) => const Kitei4(),
        Kitei5.routeName:(ctx) => const Kitei5(),
        Kitei6.routeName:(ctx) => const Kitei6(),
        Tenzikitei.routeName:(ctx) => const Tenzikitei(),
        Tenzikitei1.routeName:(ctx) => const Tenzikitei1(),
        Tenzikitei2.routeName:(ctx) => const Tenzikitei2(),
        Tenzikitei3.routeName:(ctx) => const Tenzikitei3(),
        Tenzikitei4.routeName:(ctx) => const Tenzikitei4(),
        Tenzikitei5.routeName:(ctx) => const Tenzikitei5(),
        Tenzikitei6.routeName:(ctx) => const Tenzikitei6(),
        Tenzikitei7.routeName:(ctx) => const Tenzikitei7(),
        Tenzikitei8.routeName:(ctx) => const Tenzikitei8(),
        Tenzikitei9.routeName:(ctx) => const Tenzikitei9(),
        Gakusin.routeName:(ctx) => const Gakusin(),

        Zentai.routeName:(ctx) => const Zentai(),
      },
    );
  }
}
