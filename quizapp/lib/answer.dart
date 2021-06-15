import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String optionAns;
  final Function nextQuest;

  Answer(this.optionAns, this.nextQuest);
  // const Answer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      child: ElevatedButton(
        child: Text(
          optionAns,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        onPressed: () {
          nextQuest();
        },
      ),
    );
  }
}
