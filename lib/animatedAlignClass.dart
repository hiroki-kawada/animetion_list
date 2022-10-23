// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AnimatedAlignClass extends StatelessWidget {
  const AnimatedAlignClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedAlign'),
      ),
      body: const MyAnimatedAlign(title: 'AnimatedAlign Page'),
    );
  }
}

class MyAnimatedAlign extends StatefulWidget {
  const MyAnimatedAlign({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyAnimatedAlign> createState() => _MyAnimatedAlign();
}

class _MyAnimatedAlign extends State<MyAnimatedAlign> {
  Alignment _alg = Alignment.topLeft;

  void _onTap() => setState(() => _alg = Alignment.bottomRight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedAlign(
        alignment: _alg,
        duration: Duration(seconds: 1),
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blueAccent,
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _onTap),
    );
  }
}
