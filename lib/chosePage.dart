import 'package:flutter/material.dart';
import 'package:instagram/data.dart';
import 'package:instagram/profile/profile.dart';
import 'package:instagram/reails/reals.dart';

import 'activity/activityPage.dart';
import 'exploer/exploer_page.dart';
import 'home/home_page.dart';

class chosePage extends StatefulWidget {
  const chosePage({Key? key}) : super(key: key);

  @override
  State<chosePage> createState() => _chosePageState();
}

class _chosePageState extends State<chosePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: sicren[indexPage],
    );
  }
}
