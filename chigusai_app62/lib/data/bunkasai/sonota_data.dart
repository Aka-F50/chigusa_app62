class EventMerchandiseDetailData {
  final String title;
  final int price;
  final String imgPath;

  const EventMerchandiseDetailData({
    required this.title,
    required this.price,
    required this.imgPath,
  });
}

class SonotaData {
  static const String saikoshiInfo = "生徒の皆さんや先生方から頂いた、不要な商品を売り出しています。お得な商品が見つかるチャンス！是非あなただけの掘り出し物を見つけに来てください！";
  static const String ennitiInfo = "サブストリートにて、老若男女楽しめるミニゲームを設置しています。HR制作の息抜きにどうぞ！";
  static const List<EventMerchandiseDetailData> eventMerchandiseList = [
    EventMerchandiseDetailData(
      title: "ラバーバンド",
      price: 250,
      imgPath: "assets/images/bunkasai/sonota/rababan.jpg",
    ),
    EventMerchandiseDetailData(
      title: "タオル",
      price: 750,
      imgPath: "assets/images/bunkasai/sonota/taoru.jpg",
    ),
    EventMerchandiseDetailData(
      title: "キーホルダー",
      price: 600,
      imgPath: "assets/images/bunkasai/sonota/kihoruda.jpg",
    ),
    EventMerchandiseDetailData(
      title: "クリアファイル",
      price: 300,
      imgPath: "assets/images/bunkasai/sonota/fairu.jpg",
    ),
    EventMerchandiseDetailData(
      title: "ステッカー\n(4枚セット)",
      price: 250,
      imgPath: "assets/images/bunkasai/sonota/sute1.jpg",
    ),
    EventMerchandiseDetailData(
      title: "ステッカー\n(4枚セット)",
      price: 250,
      imgPath: "assets/images/bunkasai/sonota/sute2.jpg",
    ),
    EventMerchandiseDetailData(
      title: "ステッカー\n(4枚セット)",
      price: 250,
      imgPath: "assets/images/bunkasai/sonota/sute3.jpg",
    ),
    EventMerchandiseDetailData(
      title: "ステッカー\n(4枚セット)",
      price: 250,
      imgPath: "assets/images/bunkasai/sonota/sute4.jpg",
    )
  ];
  static const String chigumaInfo = "千種高校のマスコットキャラクターちぐま！\n杜若の帽子を被った彼は超キュート！そんなちぐまが文化祭に現れるかも…？！？\n会えたら是非声をかけてあげてね！！";
}
