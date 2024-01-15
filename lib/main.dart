import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'My App',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Helloi');
  }
}

// To create Stateless Page - Type 'stl'
// To create Stateful Page - Type 'stf'
// To restart application, type in terminal - Shift + r