import 'package:flutter/material.dart';
import 'AnimatedContainerWidget.dart';
import 'AnimatedCrossFadeWidget.dart';
import 'AnimatedOpacityWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Container Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animated Container Example'),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              AnimatedContainerWidget(),
              Divider(),
              AnimatedCrossFadeWidget(),
              Divider(),
              AnimatedOpacityWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
