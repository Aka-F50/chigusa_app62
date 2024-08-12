import '../time_data.dart';

class YushiDetailData {
  final String title;
  final Time startTime;
  final String place;
  final String imgPath;

  const YushiDetailData({
    required this.title,
    required this.startTime,
    required this.place,
    required this.imgPath,
  });
}

class YushiData {
  static const List<YushiDetailData> yushiDataList = [
    YushiDetailData(
      title: "17タッチ",
      startTime: Time(day: GakusaiDay.bunkasai1, hour: 10, minute: 30),
      place: "視聴覚室",
      imgPath: "assets/images/bunkasai/yushi/yusi1.jpg",
    ),
    YushiDetailData(
      title: "M*2",
      startTime: Time(day: GakusaiDay.bunkasai1, hour: 10, minute: 30),
      place: "メインストリート",
      imgPath: "assets/images/bunkasai/yushi/yusi2.jpg",
    ),
    YushiDetailData(
      title: "iRRit",
      startTime: Time(day: GakusaiDay.bunkasai1, hour: 11, minute: 30),
      place: "メインストリート",
      imgPath: "assets/images/bunkasai/yushi/yusi3.JPG",
    ),
    YushiDetailData(
      title: "塚本詩織独奏",
      startTime: Time(day: GakusaiDay.bunkasai1, hour: 13, minute: 30),
      place: "視聴覚室",
      imgPath: "assets/images/bunkasai/yushi/yusi4.JPG",
    ),
    YushiDetailData(
      title: "カネコサラノ",
      startTime: Time(day: GakusaiDay.bunkasai1, hour: 13, minute: 30),
      place: "メインストリート",
      imgPath: "assets/images/bunkasai/yushi/yusi5.JPG",
    ),
    YushiDetailData(
      title: "キリマンジャロ",
      startTime: Time(day: GakusaiDay.bunkasai1, hour: 14, minute: 00),
      place: "視聴覚室",
      imgPath: "assets/images/bunkasai/yushi/yusi6.JPG",
    ),
    YushiDetailData(
      title: "Nyx",
      startTime: Time(day: GakusaiDay.bunkasai1, hour: 14, minute: 30),
      place: "メインストリート",
      imgPath: "assets/images/bunkasai/yushi/yusi7.JPG",
    ),
    YushiDetailData(
      title: "IRIS",
      startTime: Time(day: GakusaiDay.bunkasai1, hour: 15, minute: 0),
      place: "視聴覚室",
      imgPath: "assets/images/bunkasai/yushi/yusi8.jpg",
    ),
    YushiDetailData(
      title: "Cranz",
      startTime: Time(day: GakusaiDay.bunkasai1, hour: 15, minute: 30),
      place: "視聴覚室",
      imgPath: "assets/images/bunkasai/yushi/yusi9.jpg",
    ),
    YushiDetailData(
      title: "LAYNO",
      startTime: Time(day: GakusaiDay.bunkasai1, hour: 15, minute: 30),
      place: "メインストリート",
      imgPath: "assets/images/bunkasai/yushi/yusi10.jpg",
    ),


    YushiDetailData(
      title: "ちぎりパン",
      startTime: Time(day: GakusaiDay.bunkasai2, hour: 10, minute: 30),
      place: "メインストリート",
      imgPath: "assets/images/bunkasai/yushi/yusi11.JPG",
    ),
    YushiDetailData(
      title: "菖蒲華",
      startTime: Time(day: GakusaiDay.bunkasai2, hour: 11, minute: 30),
      place: "メインストリート",
      imgPath: "assets/images/bunkasai/yushi/yusi12.JPG",
    ),
    YushiDetailData(
      title: "JOY",
      startTime: Time(day: GakusaiDay.bunkasai2, hour: 12, minute: 00),
      place: "メインストリート",
      imgPath: "assets/images/bunkasai/yushi/yusi13.JPG",
    ),
    YushiDetailData(
      title: "Another Cdor",
      startTime: Time(day: GakusaiDay.bunkasai2, hour: 13, minute: 30),
      place: "視聴覚室",
      imgPath: "assets/images/bunkasai/yushi/yusi14.jpg",
    ),
    YushiDetailData(
      title: "Gemini",
      startTime: Time(day: GakusaiDay.bunkasai2, hour: 14, minute: 0),
      place: "視聴覚室",
      imgPath: "assets/images/bunkasai/yushi/yusi15.JPG",
    ),
    YushiDetailData(
      title: "ふりむん",
      startTime: Time(day: GakusaiDay.bunkasai2, hour: 14, minute: 0),
      place: "メインストリート",
      imgPath: "assets/images/bunkasai/yushi/yusi16.JPG",
    ),
    YushiDetailData(
      title: "あさつゆ",
      startTime: Time(day: GakusaiDay.bunkasai2, hour: 14, minute: 30),
      place: "メインストリート",
      imgPath: "assets/images/bunkasai/yushi/yusi17.JPG",
    ),
    YushiDetailData(
      title: "Yuuna",
      startTime: Time(day: GakusaiDay.bunkasai2, hour: 15, minute: 0),
      place: "視聴覚室",
      imgPath: "assets/images/bunkasai/yushi/yusi18.JPG",
    ),
    YushiDetailData(
      title: "CGS48",
      startTime: Time(day: GakusaiDay.bunkasai2, hour: 15, minute: 0),
      place: "メインストリート",
      imgPath: "assets/images/bunkasai/yushi/yusi19.JPG",
    ),
    YushiDetailData(
      title: "HORRY BANKERs",
      startTime: Time(day: GakusaiDay.bunkasai2, hour: 15, minute: 30),
      place: "視聴覚室",
      imgPath: "assets/images/bunkasai/yushi/yusi20.JPG",
    
    ),
  ];
}
