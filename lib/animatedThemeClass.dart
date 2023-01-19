// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AnimatedThemeClass extends StatelessWidget {
  const AnimatedThemeClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedThemeClass'),
      ),
      body: const MyAnimatedTheme(
          title: 'AnimatedThemeClass Page'),
    );
  }
}

class MyAnimatedTheme extends StatefulWidget {
  const MyAnimatedTheme({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  State<MyAnimatedTheme> createState() => _MyAnimatedTheme();
}

class _MyAnimatedTheme extends State<MyAnimatedTheme> {
  bool _isLightMode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: AnimatedTheme(
            duration: Duration(seconds: 1),
            data: this._isLightMode ? ThemeData.light() : ThemeData.dark(),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(50),
                child: Text(
                  this._isLightMode ? 'ライトモード' : 'ダークモード',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            this._isLightMode = !this._isLightMode;
          });
        },
      ),
    );
  }
}