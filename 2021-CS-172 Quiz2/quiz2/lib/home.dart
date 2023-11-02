import 'package:flutter/material.dart';
import 'tab_screen.dart';
import 'drawer_screen.dart';
import 'list_view_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome to the Home Screen'),
            // Hero(
            //   tag: 'heroTag',
            //   child: Container(
            //     width: 100.0,
            //     height: 100.0,
            //     color: Colors.blue,
            //   ),
            // ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TabScreen()));
              },
              child: Text('Go to Tab Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DrawerScreen()));
              },
              child: Text('Open Drawer'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => ListViewScreen()));
              },
              child: Text('Go to ListView Screen'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // Navigate to the home section.
              },
            ),
            IconButton(
              icon: Icon(Icons.business),
              onPressed: () {
                // Navigate to another section.
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement a floating action button action here.
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
