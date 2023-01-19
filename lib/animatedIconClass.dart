// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AnimatedIconClass extends StatelessWidget {
  const AnimatedIconClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedIconClass'),
      ),
      body: const MyAnimatedIcon(
          title: 'AnimatedIconClass Page'),
    );
  }
}

class MyAnimatedIcon extends StatefulWidget {
  const MyAnimatedIcon({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  State<MyAnimatedIcon> createState() => _MyAnimatedIcon();
}

class _MyAnimatedIcon extends State<MyAnimatedIcon> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )
      ..forward()
      ..repeat(reverse: true);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: animation,
          size: 72.0,
          semanticLabel: 'Show menu',
        ),
      ),
    );
  }
}