import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String qusFromeMain;

  Question(this.qusFromeMain);
  // const Questionn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      child: Text(
        qusFromeMain,
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
