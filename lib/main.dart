import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Assignment',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Application App Bar'),
          backgroundColor: Color(0xFF9A1795),
          textTheme: TextTheme(
              title: TextStyle(
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.bold,
                  fontSize: 16)),
        ),
        body: Container(
            child: Column(
          children: [
            Container(
              color: Color(0xFFC4C4C4),
              child: Row(
                children: [
                  Container(
                    color: Color(0xFF3050A1),
                    height: 72,
                    width: 45,
                  ),
                  Container(
                    color: Color(0xFF3050A1),
                    height: 72,
                    width: 45,
                  ),
                  Container(
                    color: Color(0xFF3050A1),
                    height: 72,
                    width: 45,
                  ),
                  Container(
                    color: Color(0xFF3050A1),
                    height: 72,
                    width: 45,
                  ),
                  Container(
                    color: Color(0xFF3050A1),
                    height: 72,
                    width: 45,
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
              ),
              height: 106,
              width: 319,
              margin: EdgeInsets.fromLTRB(20, 60, 20, 28),
            ),
            Container(
              color: Color(0xFFC4C4C4),
              child: Row(
                children: [
                  Container(
                    color: Color(0xFF3050A1),
                    height: 72,
                    width: 45,
                    margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                  ),
                  Container(
                    color: Color(0xFF3050A1),
                    height: 72,
                    width: 45,
                    margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
              ),
              height: 106,
              width: 319,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 28),
            ),
            Container(
              color: Color(0xFFC4C4C4),
              child: Row(
                children: [
                  Container(
                    color: Color(0xFF3050A1),
                    height: 72,
                    width: 45,
                    margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                  ),
                  Container(
                    color: Color(0xFF3050A1),
                    height: 72,
                    width: 45,
                    margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
              ),
              height: 106,
              width: 319,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 28),
            ),
            Container(
              color: Color(0xFFC4C4C4),
              child: Row(
                children: [
                  Container(
                    color: Color(0xFF3050A1),
                    height: 72,
                    width: 45,
                    margin: EdgeInsets.fromLTRB(21, 0, 0, 0),
                  ),
                  Container(
                    color: Color(0xFF30A149),
                    height: 72,
                    width: 170,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  ),
                  Container(
                    color: Color(0xFF3050A1),
                    height: 72,
                    width: 45,
                    margin: EdgeInsets.fromLTRB(0, 0, 38, 0),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
              ),
              height: 106,
              width: 319,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 28),
            )
          ],
        )),
      ),
    );
  }
}
