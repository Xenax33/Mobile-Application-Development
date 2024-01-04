import 'package:flutter/material.dart';
import 'signup_page.dart';
import "./landing_page.dart";
import '../configuration.dart';
import "./dashboard.dart";

class LoginPage extends StatelessWidget {
  final Con con = Con(); // Create an instance of the Con class
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: emailController,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Enter your email',
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
                // Add your login logic here
                bool loginResult = await con.login(
                  emailController.text,
                  passwordController.text,
                );

                if (loginResult) {
                  // Navigate to the landing page
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardScreen()),
                  );
                } else {
                  // Handle login failure
                  // Optionally, you can show an error message or take other actions
                }
              },
              child: Text('Login'),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupPage()),
                );
              },
              child: Text('Don\'t have an account? Sign up here.'),
            ),
          ],
        ),
      ),
    );
  }
}
