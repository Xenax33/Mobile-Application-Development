import 'package:flutter/material.dart';
import '../configuration.dart';
import './landing_page.dart';

class SignupPage extends StatelessWidget {
  final Con con = Con(); // Create an instance of the Con class

  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: fullNameController,
                decoration: InputDecoration(
                  hintText: 'Enter your full name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Enter your username',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                // Add your signup logic here
                bool registrationResult = await con.registerUser(
                  fullNameController.text,
                  emailController.text,
                  passwordController.text,
                );

                if (registrationResult) {
                  // Navigate to the landing page
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LandingPage()),
                  );
                } else {
                  // Handle registration failure
                  // Optionally, you can show an error message or take other actions
                }
              },
              child: Text('Sign up'),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LandingPage()),
                );
              },
              child: Text('Already have an account? Login here.'),
            ),
          ],
        ),
      ),
    );
  }
}
