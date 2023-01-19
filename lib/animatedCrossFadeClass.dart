// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AnimatedCrossFadeClass extends StatelessWidget {
  const AnimatedCrossFadeClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedCrossFadeClass'),
      ),
      body: const MyAnimatedCrossFade(
          title: 'AnimatedCrossFadeClass Page'),
    );
  }
}

class MyAnimatedCrossFade extends StatefulWidget {
  const MyAnimatedCrossFade({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  State<MyAnimatedCrossFade> createState() => _MyAnimatedCrossFade();
}

class _MyAnimatedCrossFade extends State<MyAnimatedCrossFade> {
  bool showFirst = true;

  @override
  Widget build(BuildContext context) {
    final firstImage = Image.network(
      'https://1.bp.blogspot.com/-tVeC6En4e_E/X96mhDTzJNI/AAAAAAABdBo/jlD_jvZvMuk3qUcNjA_XORrA4w3lhPkdQCNcBGAsYHQ/s400/onepiece01_luffy.png',
      width: 300,
      height: 300,
    );
    final secondImage = Image.network(
      'https://1.bp.blogspot.com/-vIXZ3_KMn9g/X-FcvVKPQSI/AAAAAAABdEc/i8oJKU0UDMM2uQfzemn6oOmJLICo4VcVgCNcBGAsYHQ/s400/onepiece10_jinbe.png',
      width: 300,
      height: 300,
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedCrossFade(
              firstChild: firstImage,
              secondChild: secondImage,
              duration: Duration(seconds: 1),
              crossFadeState:
              showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showFirst = !showFirst;  // bool 値を切り替える
                });
              },
              child: Text('CHANGE'),
            ),
          ],
        ),
      ),
    );
  }
}