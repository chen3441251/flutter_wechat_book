import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_wechat_book/CardRecommed.dart';
import 'package:flutter_wechat_book/CustomAppBar.dart';

import 'CardFree.dart';
import 'CardShare.dart';
import 'CardSpecial.dart';

class ContentPage extends StatefulWidget {
  final ValueChanged<int> onPageChanged;
  final ContentPageController contentPageController;

  const ContentPage({Key key, this.onPageChanged, this.contentPageController})
      : super(key: key);

  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  final List<Color> _colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green
  ];
  PageController _pageController = PageController(viewportFraction: 0.8);

  @override
  void initState() {
    //给contentPageController赋值
    widget.contentPageController._pageController = _pageController;
    _statusBar();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //appBar
        CustomAppBar(),
        //卡片区域
        Expanded(
          child: PageView(
            children: <Widget>[
              _getPageViewItem(CardRecommed()),
              _getPageViewItem(CardShare()),
              _getPageViewItem(CardFree()),
              _getPageViewItem(CardSpecial()),

            ],
            controller: _pageController,
            onPageChanged: widget.onPageChanged,
          ),
        )
      ],
    );
  }

  Widget _getPageViewItem(Widget child) {
    return Padding(
      padding: EdgeInsets.all(10),
      child:child
    );
  }
  _statusBar(){
    SystemUiOverlayStyle systemUiOverlayStyle=SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF000000),
      systemNavigationBarDividerColor: null,
      statusBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    );
    ///沉浸式状态栏dark模式
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class ContentPageController {
  PageController _pageController;

  void jumpToPage(int pageIndex) {
    _pageController?.jumpToPage(pageIndex);
  }
}
