// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class FadeInImageClass extends StatelessWidget {
  const FadeInImageClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FadeInImageClass'),
      ),
      body: const MyFadeInImage(
          title: 'FadeInImageClass Page'),
    );
  }
}

class MyFadeInImage extends StatefulWidget {
  const MyFadeInImage({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  State<MyFadeInImage> createState() => _MyFadeInImage();
}

class _MyFadeInImage extends State<MyFadeInImage> {

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
        body: Stack(
          children: <Widget>[
            const Center(child: CircularProgressIndicator()),
            Center(
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: 'https://1.bp.blogspot.com/-KZ0MJgiPJHo/X__CLeY-zVI/AAAAAAABdNM/HnFYqUe0VQEzCWCqyMggibpk4kBRtFCpQCNcBGAsYHQ/s400/onepiece09_brook.png',
              ),
            ),
          ],
        ),
    );
  }
}

