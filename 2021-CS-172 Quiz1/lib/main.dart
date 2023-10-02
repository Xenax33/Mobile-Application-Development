import 'package:flutter/material.dart';
import './OrientationLayoutIconsWidget.dart';
import './OrientationLayoutWidget.dart';
import './GridViewWidget.dart';
import './OrientationBuilderWidget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orientation Example"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                const OrientationLayoutIconsWidget(),
                Divider(),
                const OrientationLayoutWidget(),
                Divider(),
                const GridViewWidget(),
                Divider(),
                const OrientationBuilderWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}
