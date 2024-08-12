import 'package:chigusai_app/data/time_data.dart';

class FFDetailData {
  final String title;
  final Time startTime;

  const FFDetailData({required this.title, required this.startTime});
}

class FFData {
  static const List<FFDetailData> ffDataList = [
    FFDetailData(title: "思い出ムービー", startTime: Time(hour: 16, minute: 40, day: GakusaiDay.zenkokikaku)),
    FFDetailData(title: "運動場へ移動", startTime: Time(hour: 17, minute: 00, day: GakusaiDay.zenkokikaku)),
    FFDetailData(title: "千種生の主張", startTime: Time(hour: 17, minute: 10, day: GakusaiDay.zenkokikaku)),
    FFDetailData(title: "火文字鑑賞", startTime: Time(hour: 17, minute: 40, day: GakusaiDay.zenkokikaku)),
    FFDetailData(title: "退校開始", startTime: Time(hour: 17, minute: 50, day: GakusaiDay.zenkokikaku)),
    FFDetailData(title: "完全退校", startTime: Time(hour: 18, minute: 00, day: GakusaiDay.zenkokikaku)),
  ];
}
