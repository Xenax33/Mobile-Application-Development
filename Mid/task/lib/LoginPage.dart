import 'package:flutter/material.dart';
import 'AccountScreen.dart'; // Import the FriendsScreen class

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Log In',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            InputWithIcon(
                              icon: Icons.person,
                              hint: 'Username',
                            ),
                            SizedBox(height: 10), // Added space
                            InputWithIcon(
                              icon: Icons.lock,
                              hint: 'Password',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Navigate to the Friends list screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FriendsScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange, // Set button color to orange
                          shape: CircleBorder(), // Make the button circular
                          padding: EdgeInsets.all(
                              20), // Adjust padding for size
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('Forgot Password?'),
                      SizedBox(height: 10),
                      Text(
                        'Register Here',
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InputWithIcon extends StatelessWidget {
  final IconData icon;
  final String hint;

  InputWithIcon({required this.icon, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          border: InputBorder.none,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
