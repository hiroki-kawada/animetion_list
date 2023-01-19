// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AnimatedPaddingClass extends StatelessWidget{
  const AnimatedPaddingClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedPadding'),
      ),
      body: const MyAnimatedPaddingClass(title: 'AnimatedPadding Page'),
    );
  }
}

class MyAnimatedPaddingClass extends StatefulWidget {
  const MyAnimatedPaddingClass({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyAnimatedPaddingClass> createState() => _MyAnimatedPaddingClass();
}

class _MyAnimatedPaddingClass extends State<MyAnimatedPaddingClass> {
  double padValue = 0.0;
  void _updatePadding(double value) {
    setState(() {
      padValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedPadding(
          padding: EdgeInsets.all(padValue),
          duration: const Duration(seconds: 2),
          curve: Curves.easeInOut,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 5,
            color: Colors.blue,
          ),
        ),
        Text('Padding: $padValue'),
        ElevatedButton(
            child: const Text('Change padding'),
            onPressed: () {
              _updatePadding(padValue == 0.0 ? 100.0 : 0.0);
            }),
      ],
    );
  }
}