import 'package:flutter/material.dart';

class realsPage extends StatefulWidget {
  const realsPage({Key? key}) : super(key: key);

  @override
  State<realsPage> createState() => _realsPageState();
}

class _realsPageState extends State<realsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(child: Text("reals")),
    );
  }
}
