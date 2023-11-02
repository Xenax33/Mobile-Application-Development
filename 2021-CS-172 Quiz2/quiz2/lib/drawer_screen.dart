import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Screen'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.pop(context); // Navigate back to the previous screen
              },
            ),
            ListTile(
              title: Text('Other Section'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // Navigate to another section.
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Content for Drawer Screen'),
      ),
    );
  }
}
