// ignore_for_file: file_names

import 'package:flutter/material.dart';

class  AnimatedContainerClass extends StatelessWidget {
  const AnimatedContainerClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainer'),
      ),
      body: const MyAnimatedContainer(title: 'AnimatedContainer Page'),
    );
  }
}

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainer();
}

class _MyAnimatedContainer extends State<MyAnimatedContainer> {
  bool _isTap = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: (){
            setState(() {
              _isTap = !_isTap;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            width: _isTap == true ? 100 : 300,
            height: _isTap == true ? 300 : 100,
            color: _isTap == true ? Colors.red : Colors.blue,
            child: const FlutterLogo(size: 75),

          ),
        ),
      ),

    );
  }
}