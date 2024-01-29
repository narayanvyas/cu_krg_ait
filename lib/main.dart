import 'package:flutter/material.dart';
import 'home_page.dart';
import 'signup_page.dart';

// To create Stateless Page - Type 'stl'
// To create Stateful Page - Type 'stf'
// To restart application, type in terminal - Shift + r
void main() {
  runApp(MaterialApp(
    title: 'My App',
    home: SignupPage(),
  ));
}
