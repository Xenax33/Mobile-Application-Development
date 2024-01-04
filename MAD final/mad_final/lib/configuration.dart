import 'package:flutter/material.dart';
import "pages/login_page.dart";
import 'dart:convert';
import 'package:http/http.dart' as http;

class Con {
  // // Pass the BuildContext as a parameter to the constructor
  // final BuildContext context;
  
  // Con(this.context);

  Future<bool> registerUser(String name, String email, String password) async {
    try {
      var regBody = {"Name": name, "Email": email, "Password": password};
      var response = await http.post(
        Uri.parse('http://localhost:8080/api/User/create'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(regBody),
      );
      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");

      // Check if the registration was successful
      if (response.statusCode == 200) {
        Map<String, dynamic> responseBody = jsonDecode(response.body);

        // Check if 'success' is true in the response body
        if (responseBody['success'] == true) {
          return true;
        }
      }
    } catch (e) {
      print("Error: $e");
      return false;
    }
    return false;
  }
  Future<bool> login(String email, String password) async {
    try {
      var response = await http.get(
        Uri.parse('http://localhost:8080/api/User/logIn/' + email + "/" + password),
      );
      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");

      // Check if the registration was successful
      if (response.statusCode == 200) {
        Map<String, dynamic> responseBody = jsonDecode(response.body);

        // Check if 'success' is true in the response body
        if (responseBody['success'] == true) {
          return true;
        }
      }
    } catch (e) {
      print("Error: $e");
      return false;
    }
    return false;
  }

    Future<bool> addDish(String name, String price, String Available , String RestId , String Type) async {
    try {
       bool flag = false;
      if(Available == "Yes")
      {
        flag = true;
      }
      var regBody = {"Name": name, "Price": price, "Available": flag , "RestaurantId" : RestId , "Type" : Type};
      var response = await http.post(
        Uri.parse('http://localhost:8080/api/Dish/create'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(regBody),
      );
      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");

      // Check if the registration was successful
      if (response.statusCode == 200) {
        Map<String, dynamic> responseBody = jsonDecode(response.body);

        // Check if 'success' is true in the response body
        if (responseBody['success'] == true) {
          return true;
        }
      }
    } catch (e) {
      print("Error: $e");
      return false;
    }
    return false;
  }
}
