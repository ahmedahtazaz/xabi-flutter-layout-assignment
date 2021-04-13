import 'package:bottom_drawer/bottom_drawer.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    _controller.close();
    return MaterialApp(
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
        body: Stack(
          fit: StackFit.expand,
          children: [
            _button == 'Assignment 1'
                ? _layoutAssignment(context)
                : Text(
                    'Coming Soon',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
            _buildBottomDrawer(context),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomDrawer(BuildContext context) {
    return BottomDrawer(
      header: _buildBottomDrawerHead(context),
      body: _buildBottomDrawerBody(context),
      headerHeight: _headerHeight,
      drawerHeight: _bodyHeight,
      color: Colors.lightBlue,
      controller: _controller,
    );
  }

  Widget _buildBottomDrawerHead(BuildContext context) {
    return Container(
      height: _headerHeight,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 10.0,
              right: 10.0,
              top: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildButtons(1, 4),
            ),
          ),
          Spacer(),
          Divider(
            height: 1.0,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }

  Widget _buildBottomDrawerBody(BuildContext context) {
    return Container(
      width: double.infinity,
      height: _bodyHeight,
      child: SingleChildScrollView(
        child: Column(),
      ),
    );
  }

  List<Widget> _buildButtons(int start, int end) {
    List<Widget> buttons = [];
    for (int i = start; i <= end; i++)
      buttons.add(TextButton(
        child: Text(
          'Assignment $i',
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.black,
          ),
        ),
        onPressed: () {
          setState(() {
            _button = 'Assignment $i';
          });
        },
      ));
    return buttons;
  }

  Widget _layoutAssignment(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout Assignment',
      home: Scaffold(
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    width: 225,
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

  String _button = 'Assignment 1';
  double _headerHeight = 60.0;
  double _bodyHeight = 0;
  BottomDrawerController _controller = BottomDrawerController();
}
