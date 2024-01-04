import 'package:flutter/material.dart';
import '../configuration.dart';
import './dashboard.dart';


class DishScreen extends StatefulWidget {
  @override
  _DishScreenState createState() => _DishScreenState();
}

class _DishScreenState extends State<DishScreen> {
    final Con con = Con(); // Create an instance of the Con class

  final TextEditingController dishNameController = TextEditingController();
  final TextEditingController RestIdController = TextEditingController();
  final TextEditingController dishPriceController = TextEditingController();
int _selectedValue = 1;
  String _selectedItem = 'a';
  String _selectedItem1 = 'Yes';
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
            Text('Add Dish'),
            Spacer(), // Adds space between the title and the rounded button
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            TextField(
              controller: dishNameController,
              decoration: InputDecoration(
                labelText: 'Dish Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                hintText: 'Enter the dish name',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: dishPriceController,
              decoration: InputDecoration(
                labelText: 'Dish Price',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                hintText: 'Enter the dish price',
              ),
            ),
            SizedBox(height: 20),
             Center(
              child: SizedBox(
                width: double.infinity,
                child: DropdownButton<String>(
                  value: _selectedItem, // Current selected item
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedItem = newValue!;
                    });
                  },
                  items: <String>['a', 'b', 'c']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(height: 20),
                        TextField(
              controller: RestIdController,
              decoration: InputDecoration(
                labelText: 'Restaurant Id',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              ),
            ),
            SizedBox(height: 20),
                         Center(
              child: SizedBox(
                width: double.infinity,
                child: DropdownButton<String>(
                  value: _selectedItem1, // Current selected item
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedItem1 = newValue!;
                    });
                  },
                  items: <String>['Yes', 'No']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Add your addDish logic here
          bool registrationResult = await con.addDish(
                  dishNameController.text,
                  dishPriceController.text,
                  _selectedItem1,
                  RestIdController.text,
                  _selectedItem
          );

          if (registrationResult) {
            // Navigate to the dashboard screen
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => DashboardScreen()),
            );
          } else {
            // Handle addDish failure
            // Optionally, you can show an error message or take other actions
          }
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.yellowAccent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
    
  }
}

void main() {
  runApp(MaterialApp(
    home: DishScreen(),
  ));
}
