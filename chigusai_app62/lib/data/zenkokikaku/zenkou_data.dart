import "../time_data.dart";

enum ZenkouEventType { normal, bihin, encore, sanbon, utakai, ff }

class ZenkouDetailData {
  final String title;
  final String info;
  final Time startTime;
  final ZenkouEventType zenkouEventType;

  const ZenkouDetailData({
    required this.title,
    this.info = "",
    required this.startTime,
    required this.zenkouEventType,
  });
}

class ZenkouData {
  static const List<ZenkouDetailData> zenkouDataList = [
    ZenkouDetailData(title: "備品復元(昨年度)", zenkouEventType: ZenkouEventType.bihin, startTime: Time(day: GakusaiDay.zenkokikaku, hour: 8, minute: 35)),
    ZenkouDetailData(title: "アンコールステージ①", zenkouEventType: ZenkouEventType.normal, info: "アンコールステージです", startTime: Time(day: GakusaiDay.zenkokikaku, hour: 10, minute: 30)),
    ZenkouDetailData(title: "アンコールステージ②", zenkouEventType: ZenkouEventType.normal, info: "アンコールステージです", startTime: Time(day: GakusaiDay.zenkokikaku, hour: 11, minute: 45)),
    ZenkouDetailData(title: "三本立て", zenkouEventType: ZenkouEventType.sanbon, startTime: Time(day: GakusaiDay.zenkokikaku, hour: 13,minute: 05)),
    ZenkouDetailData(title: "閉会式", zenkouEventType: ZenkouEventType.normal, startTime: Time(day: GakusaiDay.zenkokikaku, hour: 15, minute: 05)),
    ZenkouDetailData(title: "歌会", zenkouEventType: ZenkouEventType.utakai, startTime: Time(day: GakusaiDay.zenkokikaku, hour: 15,minute: 35)),
    ZenkouDetailData(title: "FF", zenkouEventType: ZenkouEventType.ff, startTime: Time(day: GakusaiDay.zenkokikaku, hour: 17, minute: 00)),
  ];
}
