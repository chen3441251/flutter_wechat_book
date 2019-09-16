import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //计算页面距离刘海安全区域的距离
    var paddingTop = MediaQuery.of(context).padding.top;
    return Container(
      margin: EdgeInsets.fromLTRB(20, paddingTop + 10, 20, 5),
      padding: EdgeInsets.fromLTRB(20, 7, 20, 5),
      decoration: BoxDecoration(
          color: Colors.white60, borderRadius: BorderRadius.circular(19.0)),
      child: Row(children: <Widget>[
        Icon(Icons.search,color: Colors.grey,),
        Expanded(child: Text("长安十二时辰",style: TextStyle(color: Colors.grey,fontSize: 15),)),
        Container(
          width: 1,
          height: 20,
          decoration: BoxDecoration(color: Colors.grey,),
          margin: EdgeInsets.only(right: 13),
        ),
        Text("书城",style: TextStyle(fontSize: 13),)
      ],),
    );
  }
}
