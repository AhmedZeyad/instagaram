import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:carousel_images/carousel_images.dart';

class tttt extends StatefulWidget {
  @override
  State<tttt> createState() => _TagrbaState();
}

class _TagrbaState extends State<tttt> {
  final List<String> listImage = [

    "images/AZlogo.png",
    "images/post.png",
    "images/post1.jpg",
    "images/post2.jpg",
    "images/post3.jpg",
    "images/post4.jpg",
    "images/devz.jpg",
    "images/devm.jpg",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100),
          CarouselImages(
            scaleFactor: 0.7,
            listImages: listImage,
            height: 300.0,
            borderRadius: 30.0,
            // cachedNetworkImage: true,
            verticalAlignment: Alignment.bottomCenter,
            onTap: (index) {
              // print('Tapped on page $index');
            },
          )
        ],
      ),
    );
  }
}
