// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AnimatedPhysicalModelClass extends StatelessWidget {
  const AnimatedPhysicalModelClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedPhysicalModelClass'),
      ),
      body: const MyAnimatedPhysicalModel(
          title: 'AnimatedPhysicalModelClass Page'),
    );
  }
}

class MyAnimatedPhysicalModel extends StatefulWidget {
  const MyAnimatedPhysicalModel({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  State<MyAnimatedPhysicalModel> createState() => _MyAnimatedPhysicalModel();
}

class _MyAnimatedPhysicalModel extends State<MyAnimatedPhysicalModel> {
  bool _isDisabled = true;

  void _onTap() => setState(() => _isDisabled = false);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: AnimatedPhysicalModel(
            duration: const Duration(seconds: 1),
            child: Container(width: 100, height: 100),
            borderRadius: _isDisabled
                ? BorderRadius.all(Radius.zero)
                : BorderRadius.all(Radius.circular(10.0)),
            elevation: _isDisabled ? 10 : 20,
            color: Colors.orange,
            animateColor: true,
            shape: BoxShape.rectangle,
            shadowColor: Colors.black,
            curve: Curves.fastOutSlowIn,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _onTap),
    );
  }
}
