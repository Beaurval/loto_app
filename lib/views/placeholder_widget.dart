import 'package:flutter/material.dart';
import 'package:loto_app/helpers/LotoResult.dart';
import 'package:loto_app/models/Draw.dart';

class AccueilTab extends StatelessWidget {
  Future<Draw> futureDraw;

  AccueilTab();

  final colors = [Colors.red, Colors.blue, Colors.brown, Colors.cyan];
  LotoResult lotoResult = new LotoResult();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.fromLTRB(10.0, 20.0, 0.0, .0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Dernier tirage du loto ",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              FutureBuilder<Draw>(
                future: lotoResult.fetchLastDraw(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return lotoResult.getWidgetWithNumbers([
                      int.parse(snapshot.data.num1),
                      int.parse(snapshot.data.num2),
                      int.parse(snapshot.data.num3),
                      int.parse(snapshot.data.num4),
                      int.parse(snapshot.data.num5),
                      int.parse(snapshot.data.num6),
                    ]);
                  } else if (snapshot.hasError) {
                    return Text("toto");
                  }
                  return Container();
                },
              ),
            ],
          )),
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }
}
