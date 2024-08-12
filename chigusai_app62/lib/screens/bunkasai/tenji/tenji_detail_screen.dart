import 'package:flutter/material.dart';

import 'package:chigusai_app/widgets/image_viewer.dart';

import '../../../data/bunkasai/tenji_data.dart';
import 'package:chigusai_app/providers/login_data_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TenjiDetailScreen extends ConsumerStatefulWidget {
  
  static const routeName = "/tenji-detail-screen";
  const TenjiDetailScreen({
    Key? key,
    
  }) : super(key: key);

@override
_TenjiState createState() => _TenjiState();}
 class _TenjiState extends ConsumerState<TenjiDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final tenjiDetailData = ModalRoute.of(context)!.settings.arguments as TenjiDetailData;
    return Scaffold(
      appBar: AppBar(title: const Text("展示詳細")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ImageViewer(imgPath: tenjiDetailData.imgPath),
            const SizedBox(height: 20),
            Text(
              "${tenjiDetailData.hr}「${tenjiDetailData.title}」",
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              tenjiDetailData.pr,
              style: const TextStyle(fontSize: 18),
            ),
            //  FilledButton(onPressed: () {}, child: const Text("マップ")),
            const Text(
              '整理券',style: TextStyle(fontSize: 20),),
            Text(
              '$_counter',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4,
              
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (ref.watch(currentLoginStatusProvider) == CurrentLoginStatus.loggedInStaff )
                ElevatedButton(
                  onPressed: _decrementCounter,
                  child: const Text('-'),
                ),
                const SizedBox(width: 16),
                if (ref.watch(currentLoginStatusProvider) == CurrentLoginStatus.loggedInStaff )
                ElevatedButton(
                  onPressed: _resetCounter,
                  child: const Text('Reset'),
                ),
                const SizedBox(width: 16),
                if (ref.watch(currentLoginStatusProvider) == CurrentLoginStatus.loggedInStaff )
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: const Text('+'),
                ),
              ],
            ),
          ]),
          
        ),
      ),
      
    
      
    );

  }
  int _counter = 0;
  
  // providerのモデルで定義していたmethodをここかく。
  void _incrementCounter() {
    // 変更したらUIも変わる操作をsetStateで包む。
    //(providerのchangeNotifier()みたいな役割)　
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }}
  

  //　状態を使いつつ組んだWidgetを返す(build関数)    
  

