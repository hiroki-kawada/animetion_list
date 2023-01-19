// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AnimatedOpacityClass extends StatelessWidget {
  const AnimatedOpacityClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedOpacity'),
      ),
      body: const MyAnimatedOpacityClass(title: 'AnimatedOpacity Page'),
    );
  }
}

class MyAnimatedOpacityClass extends StatefulWidget {
  const MyAnimatedOpacityClass({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  State<MyAnimatedOpacityClass> createState() => _MyAnimatedOpacityClass();
}

class _MyAnimatedOpacityClass extends State<MyAnimatedOpacityClass> {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedOpacity(
                opacity: opacityLevel,
                duration: const Duration(seconds: 3),
                child: const FlutterLogo(),
              ),
              ElevatedButton(
                onPressed: _changeOpacity,
                child: const Text('Fade Logo'),
              ),
            ]),
      ),
    );
  }
}
