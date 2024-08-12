import '../time_data.dart';

class EngekiDetailData {
  final String hr;
  final String title;
  final String pr;
  final String imgPath;
  final String soukanImgPath;
  final Time startTime;
  final Time endTime;

  const EngekiDetailData({
    required this.hr,
    required this.title,
    required this.pr,
    required this.imgPath,
    required this.soukanImgPath,
    required this.startTime,
    required this.endTime,
  });
}

class EngekiData {
  static const List<EngekiDetailData> engekiDataList = [
    EngekiDetailData(
      hr: "302",
      title: "えんとつ町のプペル",
      pr: "",
      imgPath: "assets/images/bunkasai/engeki/302.jpg",
      soukanImgPath: "assets/images/bunkasai/engeki/302.jpg",
      startTime: Time(day: GakusaiDay.bunkasai2, hour: 13, minute: 35),
      endTime: Time(day: GakusaiDay.bunkasai2, hour: 14, minute: 30),
    ),
    EngekiDetailData(
      hr: "306",
      title: "美女と野獣",
      pr: "",
      imgPath: "assets/images/bunkasai/engeki/306.jpg",
      soukanImgPath: "assets/images/bunkasai/engeki/306.jpg",
      startTime: Time(day: GakusaiDay.bunkasai1, hour: 14, minute: 15),
      endTime: Time(day: GakusaiDay.bunkasai1, hour: 15, minute: 10),
    ),
    EngekiDetailData(
      hr: "307",
      title: "千と千尋の神隠し",
      pr: "",
      imgPath: "assets/images/bunkasai/engeki/307.jpg",
      soukanImgPath: "assets/images/bunkasai/engeki/307.jpg",
      startTime: Time(day: GakusaiDay.bunkasai2, hour: 10, minute: 5),
      endTime: Time(day: GakusaiDay.bunkasai2, hour: 11),
    ),
    EngekiDetailData(
      hr: "305",
      title: "不思議の国のアリス",
      pr: "",
      imgPath: "assets/images/bunkasai/engeki/305.jpg",
      soukanImgPath: "assets/images/bunkasai/engeki/305.jpg",
      startTime: Time(day: GakusaiDay.bunkasai2, hour: 12, minute: 25),
      endTime: Time(day: GakusaiDay.bunkasai2, hour: 13, minute: 20),
    ),
    EngekiDetailData(
      hr: "308",
      title: "チャーリーとチョコレート工場",
      pr: "",
      imgPath: "assets/images/bunkasai/engeki/308.jpg",
      soukanImgPath: "assets/images/bunkasai/engeki/308.jpg",
      startTime: Time(day: GakusaiDay.bunkasai1, hour: 15, minute: 25),
      endTime: Time(day: GakusaiDay.bunkasai1, hour: 16, minute: 20),
    ),
    EngekiDetailData(
      hr: "303",
      title: "アラジン",
      pr: "",
      imgPath: "assets/images/bunkasai/engeki/303.jpg",
      soukanImgPath: "assets/images/bunkasai/engeki/303.jpg",
      startTime: Time(day: GakusaiDay.bunkasai1, hour: 13, minute: 05),
      endTime: Time(day: GakusaiDay.bunkasai1, hour: 14),
    ),
    EngekiDetailData(
      hr: "309",
      title: "バケモノの子",
      pr: "",
      imgPath: "assets/images/bunkasai/engeki/309.jpg",
      soukanImgPath: "assets/images/bunkasai/engeki/309.jpg",
      startTime: Time(day: GakusaiDay.bunkasai2, hour: 11, minute: 15),
      endTime: Time(day: GakusaiDay.bunkasai2, hour: 12, minute: 10),
    ),
    EngekiDetailData(
      hr: "304",
      title: "ディセンダント",
      pr: "",
      imgPath: "assets/images/bunkasai/engeki/304.jpg",
      soukanImgPath: "assets/images/bunkasai/engeki/304.jpg",
      startTime: Time(day: GakusaiDay.bunkasai1, hour: 10, minute: 45),
      endTime: Time(day: GakusaiDay.bunkasai1, hour: 11, minute: 40),
    ),
    EngekiDetailData(
      hr: "301",
      title: "HIGH SCHOOL MUSICAL",
      pr: "",
      imgPath: "assets/images/bunkasai/engeki/301.jpg",
      soukanImgPath: "assets/images/bunkasai/engeki/301.jpg",
      startTime: Time(day: GakusaiDay.bunkasai1, hour: 11, minute: 55),
      endTime: Time(day: GakusaiDay.bunkasai1, hour: 12, minute: 50),
    ),
  ];
}
