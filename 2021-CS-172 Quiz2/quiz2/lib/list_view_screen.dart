import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Screen'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            // Add onTap logic to handle item selection.
          );
        },
      ),
    );
  }
}

List<String> items = [
  'Item 1',
  'Item 2',
  'Item 3',
  // Add more items as needed.
];
