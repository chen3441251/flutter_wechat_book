import 'package:flutter/material.dart';
import 'package:flutter_wechat_book/BaseCard.dart';

class CardRecommed extends BaseCard {
  @override
  CardRecommedState createState() {
    // TODO: implement createState
    return CardRecommedState();
  }
}

class CardRecommedState extends BaseCardState {
  @override
  void initState() {
    //重写副标题颜色
    subTitleColor = Colors.orangeAccent;
    super.initState();
  }

  @override
  topTitle(String title) {
    // TODO: implement topTitle
    return super.topTitle('本周推荐');
  }

  @override
  subTitle(String title) {
    // TODO: implement subTitle
    return super.subTitle('送你一天无限卡,全场书籍免费读>');
  }

  @override
  bottomContent() {
    // TODO: implement bottomContent
    return Expanded(
        child: Container(
          //充满容器
          constraints: BoxConstraints.expand(),
      child: Image.network(
        'http://www.devio.org/io/flutter_beauty/card_1.jpg',
        fit: BoxFit.cover,
      ),
          margin: EdgeInsets.only(top: 20),
    ));
  }
}
