// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleClass extends StatelessWidget{
  const AnimatedDefaultTextStyleClass({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedDefaultTextStyle'),
      ),
      body: const MyAnimatedDefaultTextStyle(title: 'AnimatedDefaultTextStyle Page'),
    );
  }
}

class MyAnimatedDefaultTextStyle extends StatefulWidget {
  const MyAnimatedDefaultTextStyle({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyAnimatedDefaultTextStyle> createState() => _MyAnimatedDefaultTextStyle();
}

class _MyAnimatedDefaultTextStyle extends State<MyAnimatedDefaultTextStyle> {

   TextStyle _style1 =  TextStyle(color: Colors.blueAccent, fontSize: 30, fontWeight: FontWeight.w900);
   TextStyle _style2 =  TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w300);
   bool _isTap = false;


   TextStyle get _currentTextStyle {
    return _isTap == true ? _style1 : _style2;
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: AnimatedDefaultTextStyle(
          style: _currentTextStyle,
          duration: Duration(seconds: 1),
          child:Text("AnimatedDefaultTextStyle")
      ),
      ),
      floatingActionButton: FloatingActionButton(onPressed:(){
        setState(() {
          _isTap = !_isTap;
        });
      }),
    );
  }
}