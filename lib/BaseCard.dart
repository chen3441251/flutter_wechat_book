import 'package:flutter/material.dart';

class BaseCard extends StatefulWidget {
  @override
  BaseCardState createState() => BaseCardState();
}

class BaseCardState extends State<BaseCard> {
  Color subTitleColor = Colors.grey;
  Color bottomTitleColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
        //实现切割圆角
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(6),
        clipBehavior: Clip.antiAlias, //抗锯齿
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: <Widget>[topContent(), bottomContent()],
          ),
        ));
  }

  topContent() {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 26, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //主标题
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              topTitle(''),
              topSubTitle(''),
            ],
          ),
          //副标题
          subTitle(''),
        ],
      ),
    );
  }

  bottomContent() {
    //bottom布局是动态的所以给子类去实现
    return Container();
  }

  subTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: Text(
        title,
        style: TextStyle(fontSize: 14, color: subTitleColor),
      ),
    );
  }

  topTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 22,
      ),
    );
  }

  topSubTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        title,
        style: TextStyle(fontSize: 14),
      ),
    );
  }

  bottomTitle(String title) {
    return Text(
      title,textAlign: TextAlign.center,
      style: TextStyle(fontSize: 12, color: bottomTitleColor,),
    );
  }
}
