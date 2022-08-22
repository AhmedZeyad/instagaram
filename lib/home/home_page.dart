
import 'package:flutter/material.dart';
import 'package:instagram/data.dart';
import 'package:instagram/profile/userprofile.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(left: 8, top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.13,
                  width: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "images/inss.png",
                          ))),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    "images/more.png",
                    width: 30,
                    height: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    "images/send.png",
                    width: 30,
                    height: 30,
                  )
                ],
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  height: 110,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      story(1, "You"),
                      story(2, "DNA"),
                      story(4, "dev.mustafaahmed"),
                      story(5, "zhra.dev"),
                      story(3, "ctn"),
                      story(2, "DNA"),
                      story(0, "aik"),
                      story(3, "ctn"),
                      story(2, "DNA"),
                      story(0, "aik"),
                      story(3, "ctn"),
                      story(2, "DNA"),
                      story(0, "aik"),
                      story(3, "ctn"),
                      story(4, "dev.mustafaahmed"),
                      story(5, "zhra.dev"),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      post(context, 2, "DNA", 3,
                          loc: "Baghdad", dis: "New day"),
                      post(context, 4, "dev.mustafaahmed", 5,
                          loc: "Zain.iq", dis: "All DNA teem"),
                      post(context, 1, "ahmed", 1,
                          loc: "Home", dis: "my first post"),
                      post(context, 5, "zhra.dev", 4,
                          loc: "Zain.iq", dis: "Dev Zhra"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Container story(
    int indexPhoto,
    String userName,
  ) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(acountImags[indexPhoto])),
              color: Colors.black12,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          Text(
            userName,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

//dis= discretion
//loc location
  Container post(var context, int indexUser, String userName, int postIndex,
      {String loc = "", String dis = 'dna Ahmed Mustafa alaa'}) {
    String acountImag=acountImags[indexUser];
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => profileuser(loc:loc,userName:userName,acountImag:acountImag),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 8),
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(acountImag)),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userName,
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          loc,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.more_vert),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width / 1.34,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  photos[postIndex],
                ),
              ),
            ),
          ),
          // Row(children: [
          //
          // ],),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border,
                      size: 30,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Container(
                            width: 35,
                            height: 35,
                            child: Image.asset(("images/chat.png")))),
                    Container(
                        width: 25,
                        height: 25,
                        child: Image.asset("images/send.png")),
                  ],
                ),
                Icon(
                  Icons.bookmark_border,
                  size: 30,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              dis,
              style: TextStyle(fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}
