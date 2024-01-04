import 'package:flutter/material.dart';
import './addDish.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                // Handle the menu button press
              },
            ),
            Spacer(), // Adds space between the menu icon and the title
            Text('Dashboard'),
            Spacer(), // Adds space between the title and the rounded button
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        // Your main content goes here
        child: Center(
          child: Text(
            'Your Main Content',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
                      Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => DishScreen()),
            );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue, // Set the background color as per your design
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DashboardScreen(),
  ));
}
