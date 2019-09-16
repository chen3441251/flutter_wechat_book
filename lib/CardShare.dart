import 'package:flutter/material.dart';
import 'package:flutter_wechat_book/BaseCard.dart';

/**
 * 分享页面
 */
class CardShare extends BaseCard {
  @override
  CardShareState createState() {
    // TODO: implement createState
    return CardShareState();
  }
}

class CardShareState extends BaseCardState {
  @override
  topTitle(String title) {
    // TODO: implement topTitle
    return super.topTitle('分享的联名卡');
  }

  @override
  subTitle(String title) {
    // TODO: implement subTitle
    return super.subTitle('分享给朋友最多可获得12天无限卡');
  }

  @override
  topSubTitle(String title) {
    // TODO: implement topSubTitle
    return super.topSubTitle("/第19期");
  }

  @override
  bottomContent() {
    // TODO: implement bottomContent
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(color: Color(0xfff6f7f9)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Image.network(
                  'http://www.devio.org/io/flutter_beauty/card_list.png'),
            )),
            Container(
              alignment: AlignmentDirectional.center,
            child: Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: bottomTitle('29876678 • 参与活动'),
            ),
            )

          ],
        ),
      ),
    );
  }
}
