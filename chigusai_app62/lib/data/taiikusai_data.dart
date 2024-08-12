import 'time_data.dart';

class TaiikusaiDetailData {
  final String title;
  final String? info;
  final Time startTime;
  final bool showResult;

  const TaiikusaiDetailData({
    required this.title,
    this.info,
    required this.startTime,
    this.showResult = false,
  });
}

class TaiikusaiData {
  static const List<TaiikusaiDetailData> taiikusaiDataList = [
    TaiikusaiDetailData(
      title: "開会式",
      startTime: Time(day: GakusaiDay.taiikusai, hour: 10, minute: 10),
    ),
    TaiikusaiDetailData(
      title: "台風の目",
      info: "《人数》\n各クラス　　4人1組×3ペア\n各ブロック　4人1組×9ペア\n※応援団団員と玉入れ出場者は出場不可\n　\n《ルール》\n・3ブロック対抗×3セット＋決勝 計4回\n・スタートの合図とともに４人1組で棒を持ち、周回コーンを回ってスタート位置まで戻ってくる\n・各試合1位のチームが決勝戦に進む。\n(決勝戦についても試合方法は同じ)",
      startTime: Time(day: GakusaiDay.taiikusai, hour: 10, minute: 50),
      showResult: true,
    ),
    TaiikusaiDetailData(
      title: "玉入れ",
      info: "《人数》\n各クラス　　前半7人　後半7人\n各ブロック　前半21人　後半21人\n※台風の目出場者と綱引き出場者は出場不可\n　\n《ルール》\n・3ブロック対抗×3セット＋決勝 計4回\n・試合は前後半に分けて行う。\n・玉を1人2個ずつ拾ってラインに並ぶ。\n・開始合図で中央のカゴに投げ入れ、終了合図で投げるのをやめる。\n・入った玉の個数が最も多いブロックが決勝戦に進む。\n・各ブロック 1 人、棒を使って他ブロックの邪魔をする",
      startTime: Time(day: GakusaiDay.taiikusai, hour: 11, minute: 20),
      showResult: true,
    ),
    TaiikusaiDetailData(
      title: "綱引き",
      info: "《人数》\n各クラス　　男子6人　女子7人\n各ブロック　男子18人　女子21人\n※玉入れ出場者は出場不可\n \n《ルール》\n・トーナメント8試合×男女それぞれ1トーナメント 計16試合\n・中央のマークから一定の距離まで綱を引き合う。\n・中央のマークを相手より自分の側に引き寄せた方の勝ち。",
      startTime: Time(day: GakusaiDay.taiikusai, hour: 11, minute: 50),
      showResult: true,
    ),
    
    TaiikusaiDetailData(
      title: "昼休憩",
      startTime: Time(day: GakusaiDay.taiikusai, hour: 12, minute: 30),
    ),
    TaiikusaiDetailData(
      title: "マジクラ（マジなクラブ対抗）",
      info: "部活動対抗ドッジボール\n \n《ルール》\n・男女それぞれトーナメントで行う。\n・スタート時の外野2人\n・ボールは２つ用いる。\n・試合終了時の外野の人数が少ないチームが勝利。\n・10m×12mのコートで行う。",
      startTime: Time(day: GakusaiDay.taiikusai, hour: 13, minute: 20),
      showResult: true,
    ),
    TaiikusaiDetailData(
      title: "ブロパフォ",
      info: "",
      startTime: Time(day: GakusaiDay.taiikusai, hour: 14, minute: 00),
      showResult: true,
    ),
    TaiikusaiDetailData(
      title: "ブロリレ",
      info: "《人数》\n各クラス　　男子2人　女子2人\n各ブロック　男子6人　女子6人\n\n《ルール》\n・すべてオープンコースで行う。\n・３ブロック同時×３試合 決勝戦あり 計４試合",
      startTime: Time(day: GakusaiDay.taiikusai, hour: 14, minute: 30),
      showResult: true,
    ),
    TaiikusaiDetailData(
      title: "閉会式",
      startTime: Time(day: GakusaiDay.taiikusai, hour: 15, minute: 00),
    ),
  ];
}
