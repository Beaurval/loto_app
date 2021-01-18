import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:loto_app/models/Draw.dart';

class LotoResult {
  bool withNumeroComplementaire;

  LotoResult();

  Future<Draw> fetchLastDraw() async {
    final response = await http.get('http://beaurval.alwaysdata.net/ApiLoto/results/last.php');


    if (response.statusCode == 200) {

      // If the server did return a 200 OK response,
      // then parse the JSON.

      return Draw.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }

  }

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
