import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Refactored Row and Stack Widgets'),
        ),
        body: Column(
          children: [
            BaseWidget(
              widgetType: 'Row',
              children: [
                Text('Item 1'),
                Text('Item 2'),
                Text('Item 3'),
              ],
            ),
            SizedBox(height: 20),
            BaseWidget(
              widgetType: 'Stack',
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.yellow,
                ),
                Container(
                  width: 60,
                  height: 60,
                  color: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Base Widget for Refactoring
class BaseWidget extends StatelessWidget {
  final String widgetType;
  final List<Widget> children;

  BaseWidget({required this.widgetType, required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: widgetType == 'Row' ? Colors.blue[100] : Colors.green[100],
      child: widgetType == 'Row'
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: children,
            )
          : Stack(
              alignment: Alignment.center,
              children: children,
            ),
    );
  }
}
