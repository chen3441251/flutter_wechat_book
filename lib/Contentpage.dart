import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_wechat_book/CustomAppBar.dart';

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
              _getPageViewItem(0),
              _getPageViewItem(1),
              _getPageViewItem(2),
              _getPageViewItem(3),
            ],
            controller: _pageController,
            onPageChanged: widget.onPageChanged,
          ),
        )
      ],
    );
  }

  Widget _getPageViewItem(int index) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(color: _colors[index]),
      ),
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
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class ContentPageController {
  PageController _pageController;

  void jumpToPage(int pageIndex) {
    _pageController?.jumpToPage(pageIndex);
  }
}
