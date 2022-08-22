import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram/activity/activityPage.dart';
import 'package:instagram/data.dart';
import 'package:instagram/home/home_page.dart';
import 'package:instagram/profile/profile.dart';
import 'package:instagram/reails/reals.dart';

class expluer extends StatefulWidget {
  const expluer({Key? key}) : super(key: key);

  @override
  State<expluer> createState() => _expluerState();
}

class _expluerState extends State<expluer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(15)),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Icon(Icons.search_outlined),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(fontSize: 19),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.black12,
                child: GridView.count(
                  mainAxisSpacing: 3,
                  crossAxisSpacing: 3,
                  crossAxisCount: 3,
                  children: [
                    poste(photolist[0], "vd"),
                    poste(photolist[1], "lisim"),
                    poste(photolist[2], "vd"),
                    poste(photolist[3], "vd"),
                    poste(photolist[4], "lisim"),
                    poste(photolist[0], "vd"),
                    poste(photolist[1], "vd"),
                    poste(photolist[2], "lisim"),
                    poste(photolist[3], "vd"),
                    poste(photolist[4], "lisim"),
                    poste(photolist[0], "vd"),
                    poste(photolist[1], "lisim"),
                    poste(photolist[2], "vd"),
                    poste(photolist[3], "vd"),
                    poste(photolist[4], "lisim"),
                    poste(photolist[0], "vd"),
                    poste(photolist[1], "vd"),
                    poste(photolist[2], "lisim"),
                    poste(photolist[3], "vd"),
                    poste(photolist[4], "lisim"),
                    poste(photolist[0], "vd"),
                    poste(photolist[1], "lisim"),
                    poste(photolist[2], "vd"),
                    poste(photolist[3], "vd"),
                    poste(photolist[4], "lisim"),
                    poste(photolist[0], "vd"),
                    poste(photolist[1], "vd"),
                    poste(photolist[2], "lisim"),
                    poste(photolist[3], "vd"),
                    poste(photolist[4], "lisim"),
                    poste(photolist[0], "vd"),
                    poste(photolist[1], "lisim"),
                    poste(photolist[2], "vd"),
                    poste(photolist[3], "vd"),
                    poste(photolist[4], "lisim"),
                    poste(photolist[0], "vd"),
                    poste(photolist[1], "vd"),
                    poste(photolist[2], "lisim"),
                    poste(photolist[3], "vd"),
                    poste(photolist[4], "lisim"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container poste(String photo, String type) {
    if (type == "lisim")
      type = "images/nmult.png";
    else if (type == "vd") type = "images/video.png";
    //if image or video
    return Container(
      width: 200,
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(photo))),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              type,
              width: 20,
              height: 20,
            ),
          )
        ],
      ),
    );
  }

}
