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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        title: Text(
          'My Home Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Text(
            'Hello World',
            style: TextStyle(
              fontSize: 30,
              color: Colors.blue,
              fontWeight: FontWeight.w500,
            ),
          ),
          Image.network(
              'https://cdn.pixabay.com/photo/2023/12/20/22/35/desert-8460850_1280.jpg'),
          Container(
            height: 30,
          ),
          Text('Hello World'),
          Container(
            height: 30,
          ),
          Text('Hello World'),
        ],
      ),
    );
  }
}

// To create Stateless Page - Type 'stl'
// To create Stateful Page - Type 'stf'
// To restart application, type in terminal - Shift + r