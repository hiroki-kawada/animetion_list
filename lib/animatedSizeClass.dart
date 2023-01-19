// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AnimatedSizeClass extends StatelessWidget {
  const AnimatedSizeClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedSizeClass'),
      ),
      body: const MyAnimatedSize(
          title: 'AnimatedSizeClass Page'),
    );
  }
}

class MyAnimatedSize extends StatefulWidget {
  const MyAnimatedSize({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  State<MyAnimatedSize> createState() => _MyAnimatedSize();
}

class _MyAnimatedSize extends State<MyAnimatedSize> {
  double _size = 50.0;
  bool _large = false;

  void _updateSize() {
    setState(() {
      _size = _large ? 250.0 : 100.0;
      _large = !_large;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _updateSize(),
      child: Container(
        color: Colors.amberAccent,
        child: AnimatedSize(
          curve: Curves.easeIn,
          duration: const Duration(seconds: 1),
          child: FlutterLogo(size: _size),
        ),
      ),
    );
  }
}
