import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slider_app/Src/Pages/basic_page.dart';
import 'package:slider_app/Src/Pages/buttons_page.dart';
import 'package:slider_app/Src/Pages/scroll_page.dart';

class HomeCupertinoPage extends StatefulWidget {
  @override
  _HomeCupertinoPageState createState() => _HomeCupertinoPageState();
}

class _HomeCupertinoPageState extends State<HomeCupertinoPage> {
  Color _backColor = Color.fromRGBO(55, 57, 84, 1.0);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBuilder: (_, int index) {
        switch (index) {
          case 1:
            return ScrollPage();
          case 2:
            return BasicPage();
          case 0:
          default:
            return ButtonPage();
        }
      },
      tabBar: _createNavigator(),
    );
  }

  Widget _createNavigator() {
    return CupertinoTabBar(
      onTap: (int index) {
        setState(() {
          switch (index) {
            case 1:
              _backColor = Color.fromRGBO(108, 192, 218, 1.0);
              break;
            case 2:
              _backColor = Colors.white;
              break;
            case 0:
            default:
              _backColor = Color.fromRGBO(55, 57, 84, 1.0);
              break;
          }
        });
      },
      backgroundColor: _backColor,
      iconSize: 30.0,
      activeColor: Color(0XFFCD58BB),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.bubble_chart),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.architecture),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.fireplace_outlined),
          label: '',
        )
      ],
    );
  }
}
