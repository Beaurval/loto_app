import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LotoResult {
  bool withNumeroComplementaire;

  LotoResult();

  getWidgetWithNumbers(List<int> nums) {
    List<Widget> balls = new List.generate(nums.length, (index) {
      Color backgroundColorBall = ((nums.length == index + 1) ) ? Colors.red : Colors.lightBlueAccent;

      return new Container(
        child: CircleAvatar(
          radius: 20,
          child: Text(
            nums.elementAt(index).toString(),
            textScaleFactor: 1,
            style: TextStyle(
              color: Colors.white
            ),
          ),
          backgroundColor: backgroundColorBall,
        ),
        margin: EdgeInsets.all(5.0),
      );
    });

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: balls,
    );
  }
}
