import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram/data.dart';

class profileuser extends StatefulWidget {
  final String userName;
  final String acountImag;
  final String loc;


  profileuser({
   required this.userName,
  required this.acountImag,
    required this.loc,


  });
  @override
  State<profileuser> createState() => _profileuserState();
}

class _profileuserState extends State<profileuser> {
  @override
  int indexPage = 0;

  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(automaticallyImplyLeading: false,
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 10),
              child: Row(

                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(onTap: (){Navigator.of(context).pop();},

                      child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
                  Text(
                    widget.userName,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.keyboard_arrow_down_rounded)
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.more_vert,
                color: Colors.black,
                size: 30,
              )
            ],
          )
        ],
      ),
      bottomNavigationBar:
      BottomNavigationBar(onTap: (int index) {
        setState(() {

          indexPage = index;
        });
      },

        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:
            Image.asset("images/home insta.png",width: 30,height: 30,)  ,
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,size: 40,color: Colors.black,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("images/video.png",width: 30,height: 30,),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border,size: 30,color: Colors.black,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("images/AZlogo.png", width: 30,
              height: 30,),


            label: '',
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          //image and info
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(width: 3, color: Colors.white),
                    color: Colors.black12,
                    image: DecorationImage(
                      image: AssetImage(widget.acountImag),
                    )),
              ),
              info("post", 1),
              info("Followers", 12),
              info("Following", 9),
            ],
          ),
          //bio
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.userName,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.loc,
                  style: TextStyle(
                    color: Colors.grey,

                    fontSize: 16,
                  ),
                ),
                Text(
                  "student in UOITC",
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              tool("Message"),
              tool("Following"),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 8, bottom: 25),
            height: 110,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                highlight(1, "my work"),
                highlight(2, "DNA"),
                highlight(0, "New"),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.grid_on),
              // Image.asset("images/all.png", height: 35, width: 35,),

              Image.asset(
                "images/tag.png",
                height: 35,
                width: 35,
              ),
            ],
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 5),
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
    );
  }

  // String profileImage = acountImag

  Column info(
    String key1,
    int val1,
  ) {
    return Column(
      children: [
        Text(
          val1.toString(),
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          key1,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    );
  }

  Container tool(String name) {
    return Container(

      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      height: 40,
      width: MediaQuery.of(context).size.width*0.45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.black12),
      child: Center(
        child: Text(
          name,
          style: TextStyle(
              fontSize: 19, fontWeight: FontWeight.bold, color: Colors.black),
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

  Container highlight(int index, String name) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(3),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(image[index]))),
          ),
          Text(
            name,
            style: TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}
