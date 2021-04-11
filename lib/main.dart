import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slider_app/Src/Pages/basic_page.dart';
import 'package:slider_app/Src/Pages/home_page.dart';

import 'package:slider_app/Src/Pages/scroll_page.dart';
import 'package:slider_app/Src/Widgets/cube_exercise.dart';

import 'Src/Pages/buttons_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Sldier App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: <String, WidgetBuilder>{
        'home': (_) => HomeCupertinoPage(),
        'basic': (_) => BasicPage(),
        'scroll': (_) => ScrollPage(),
        'button': (_) => ButtonPage(),
        'cube': (_) => CubeExercise(),
      },
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta llamada ${settings.name}');
        return CupertinoPageRoute(
            builder: (BuildContext context) => HomeCupertinoPage());
      },
    );
  }
}
