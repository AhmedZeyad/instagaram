import 'package:flutter/material.dart';

class activityPage extends StatefulWidget {
  @override
  State<activityPage> createState() => _activityPageState();
}

class _activityPageState extends State<activityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,

      body: Center(
        child: Text('actibity'),
      ),
    );
  }
}
