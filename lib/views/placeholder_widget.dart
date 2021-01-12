import 'package:flutter/material.dart';

class AccueilTab extends StatelessWidget {
  AccueilTab();

  final colors = [Colors.red, Colors.blue, Colors.brown, Colors.cyan];

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
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: CircleAvatar(
                      radius: 20,
                      child:
                      Text(
                        "1",
                        textScaleFactor: 1,
                      ),
                    ),
                    margin: EdgeInsets.all(5.0),
                  ),
                  Container(
                    child: CircleAvatar(
                      radius: 20,
                      child:
                      Text(
                        "1",
                        textScaleFactor: 1,
                      ),
                    ),
                    margin: EdgeInsets.all(5.0),
                  ),
                  Container(
                    child: CircleAvatar(
                      radius: 20,
                      child:
                      Text(
                        "1",
                        textScaleFactor: 1,
                      ),
                    ),
                    margin: EdgeInsets.all(5.0),
                  ),
                  Container(
                    child: CircleAvatar(
                      radius: 20,
                      child:
                      Text(
                        "1",
                        textScaleFactor: 1,
                      ),
                    ),
                    margin: EdgeInsets.all(5.0),
                  ),
                  Container(
                    child: CircleAvatar(
                      radius: 20,
                      child:
                      Text(
                        "1",
                        textScaleFactor: 1,
                      ),
                    ),
                    margin: EdgeInsets.all(5.0),
                  ),
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 20,
                      child:
                      Text(
                        "1",
                        textScaleFactor: 1,
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                    margin: EdgeInsets.all(5.0),
                  ),
                ],
            ),

          ],
        )
      ),
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }
}
