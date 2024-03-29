import 'package:flutter/material.dart';

import 'BaseCard.dart';

///长安十二时辰
class CardSpecial extends BaseCard {
  @override
  _CardSpecialState createState() => _CardSpecialState();
}

class _CardSpecialState extends BaseCardState {
  @override
  void initState() {
    bottomTitleColor=Colors.blue;
    super.initState();
  }

  @override
  topContent() {
    ///上面分上下2部分
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 66, top: 36, right: 66, bottom: 30),
          decoration: BoxDecoration(color: Color(0xfffffcf7)),
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey, blurRadius: 20, offset: Offset(0, 10))
            ]),
            child: Image.network(
                'http://www.devio.org/io/flutter_beauty/changan_book.jpg'),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Color(0xfff7f3ea),
          ),
          padding: EdgeInsets.only(left: 20, top: 15, bottom: 15, right: 20),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "长安十二时辰",
                    style: TextStyle(fontSize: 18, color: Color(0xff473b25)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      "马伯庸",
                      style: TextStyle(fontSize: 13, color: Color(0xff7d725c)),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                    //渐变
                    gradient: LinearGradient(
                        colors: [Color(0xffd9bc82), Color(0xffecd9ac)]),

                    ///圆角
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  '分享免费领',
                  style: TextStyle(fontSize: 13, color: Color(0xff4f3d1a)),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  bottomContent() {
    // TODO: implement bottomContent
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, //水平撑开
        mainAxisAlignment: MainAxisAlignment.spaceAround, //竖直均分
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network(
                  'http://www.devio.org/io/flutter_beauty/double_quotes.jpg',
                  width: 26,
                  height: 26,
                ),
                Text('揭露历史真相')
              ],
            ),
          ),
          bottomTitle('更多免费好书领不停>'),
        ],
      ),
    );
  }
}
