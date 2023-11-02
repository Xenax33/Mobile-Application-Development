import 'package:flutter/material.dart';
import './pages/header.dart';
import './pages/row.dart';
import './pages/row_with_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('top app bar'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return HeaderWidget();
            } else if (index >= 1 && index <= 3) {
              return RowWithCardWidget(key: UniqueKey(), index: index);
            } else {
              return RowWidget(key: UniqueKey(), index: index);
            }
          },
        ),
      ),
    );
  }
}