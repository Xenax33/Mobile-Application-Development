import 'package:flutter/material.dart';

class TabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab Screen'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Tab 1'),
              Tab(text: 'Tab 2'),
              Tab(text: 'Tab 3'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TabContentWidget(title: 'Tab 1'),
            TabContentWidget(title: 'Tab 2'),
            TabContentWidget(title: 'Tab 3'),
          ],
        ),
      ),
    );
  }
}

class TabContentWidget extends StatelessWidget {
  final String title;

  TabContentWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title),
    );
  }
}
