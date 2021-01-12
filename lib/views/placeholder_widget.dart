import 'package:flutter/material.dart';
import 'package:loto_app/helpers/LotoResult.dart';

class AccueilTab extends StatelessWidget {
  AccueilTab();

  final colors = [Colors.red, Colors.blue, Colors.brown, Colors.cyan];
  LotoResult lotoResult = new LotoResult();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(10.0,20.0,0.0,.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Dernier tirage du loto ",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15
              ),
            ),
            lotoResult.getWidgetWithNumbers([1,2,3,4,5,6])
          ],
        )
      ),
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }
}
