import 'package:animetionlist/animatedListClass.dart';
import 'package:flutter/material.dart';

import 'FadeInImageClass.dart';
import 'animatedAlignClass.dart';
import 'animatedContainerClass.dart';
import 'animatedCrossFadeClass.dart';
import 'animatedDefaultTextStyleClass.dart';
import 'animatedIconClass.dart';
import 'animatedModalBarrierClass.dart';
import 'animatedOpacityClass.dart';
import 'animatedPaddingClass.dart';
import 'animatedPhysicalModelClass.dart';
import 'animatedPositionedDirectionalClass.dart';
import 'animatedSizeClass.dart';
import 'animatedThemeClass.dart';
import 'heroClass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static final ThemeData _lightTheme = ThemeData(
      primaryColor: Colors.blue,
      textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.black)), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.blue));

  static final ThemeData _darkTheme = ThemeData(
      primaryColor: Colors.blue,
      textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.white)), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black));
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: _lightTheme,
      darkTheme: _darkTheme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var listItem = [
    "AnimatedAlign",
    "AnimatedContainer",
    "AnimatedDefaultTextStyle",
    "AnimatedOpacity",
    "AnimatedPadding",
    "AnimatedPhysicalModel",
    "AnimatedPositionedDirectional",
    "AnimatedTheme",
    "AnimatedCrossFade",
    "AnimatedIcon",
    "AnimatedList",
    "AnimatedModalBarrier",
    "AnimatedSize",
    "FadeInImage",
    "Hero"
  ];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimetionList'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(listItem[index]),
              onTap: () {
                _tapTile(index);
                print("クリックされました！");
              },
            ),
          );
        },
        itemCount: listItem.length,
      ),
    );
  }

  void _tapTile(int index) {
    //画面遷移する画面の初期値
    Route route =
        MaterialPageRoute(builder: (context) => const AnimatedAlignClass());
    switch (index) {
      case 0:
        break;
      case 1:
        route = MaterialPageRoute(
            builder: (context) => const AnimatedContainerClass());
        break;
      case 2:
        route = MaterialPageRoute(
            builder: (context) => const AnimatedDefaultTextStyleClass());
        break;
      case 3:
        route = MaterialPageRoute(
            builder: (context) => const AnimatedOpacityClass());
        break;
      case 4:
        route = MaterialPageRoute(
            builder: (context) => const AnimatedPaddingClass());
        break;
      case 5:
        route = MaterialPageRoute(
            builder: (context) => const AnimatedPhysicalModelClass());
        break;
      case 6:
        route = MaterialPageRoute(
            builder: (context) => const AnimatedPositionedDirectionalClass());
        break;
      case 7:
        route = MaterialPageRoute(
            builder: (context) => const AnimatedThemeClass());
        break;
      case 8:
        route = MaterialPageRoute(
            builder: (context) => const AnimatedCrossFadeClass());
        break;
      case 9:
        route = MaterialPageRoute(
            builder: (context) => const AnimatedIconClass());
        break;
      case 10:
        route = MaterialPageRoute(
            builder: (context) => const AnimatedListClass());
        break;
      case 11:
        route = MaterialPageRoute(
            builder: (context) => const AnimatedModalBarrierClass());
        break;
      case 12:
        route = MaterialPageRoute(
            builder: (context) => const AnimatedSizeClass());
        break;
      case 13:
        route = MaterialPageRoute(
            builder: (context) => const FadeInImageClass());
        break;
      case 14:
        route = MaterialPageRoute(
            builder: (context) => const HeroClass());
        break;
    }
    //画面遷移処理
    Navigator.push(
      context,
      route,
    );
  }
}
