import 'package:flutter/material.dart';
import 'package:flutter_wechat_book/Contentpage.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final Color DEFAULT_COLOR = Colors.grey;
  final Color ACTIVE_COLOR = Colors.blue;
  int _currentIndex = 0;
  ContentPageController _contentPageController = ContentPageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(//渐变色
          colors: [
            Colors.green[50],
            Colors.green[200],
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: ContentPage(
          onPageChanged: (index) {
            setState(() {
              //content滑动监听index赋值
              _currentIndex = index;
            });
          },
          contentPageController: _contentPageController,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          _itemNavigator("推荐", Icons.folder, 0),
          _itemNavigator("分享", Icons.book, 1),
          _itemNavigator("免费", Icons.history, 2),
          _itemNavigator("长安", Icons.person, 3),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          _contentPageController.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  _itemNavigator(String title, IconData icon, int index) {
    return BottomNavigationBarItem(
        title: Text(
          title,
          style: TextStyle(
              color: index == _currentIndex ? ACTIVE_COLOR : DEFAULT_COLOR),
        ),
        icon: Icon(
          icon,
          color: DEFAULT_COLOR,
        ),
        activeIcon: Icon(
          icon,
          color: ACTIVE_COLOR,
        ));
  }
}
