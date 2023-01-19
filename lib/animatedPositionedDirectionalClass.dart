// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AnimatedPositionedDirectionalClass extends StatelessWidget {
  const AnimatedPositionedDirectionalClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedPositionedDirectionalClass'),
      ),
      body: const MyAnimatedPositionedDirectional(
          title: 'AnimatedPositionedDirectionalClass Page'),
    );
  }
}

class MyAnimatedPositionedDirectional extends StatefulWidget {
  const MyAnimatedPositionedDirectional({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  State<MyAnimatedPositionedDirectional> createState() => _MyAnimatedPositionedDirectional();
}

class _MyAnimatedPositionedDirectional extends State<MyAnimatedPositionedDirectional> {
  double _start = 0;

  void _onTap() => setState(() => _start = 100);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
              children: <Widget>[
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: AnimatedPositionedDirectional(
                    top: 0,
                    start: _start,
                    duration: Duration(seconds: 1),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blueAccent,
                    ),
                  ),
                )
              ]
          )
      ),
      floatingActionButton: FloatingActionButton(onPressed: _onTap),
    );
  }
}
