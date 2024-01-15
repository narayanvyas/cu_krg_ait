import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TextEditingController nameController = TextEditingController();
  void performLogin() {}

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
        // You can use ListView instead of Column widget to fix scrolling problem
        children: [
          Text(
            'Hello World',
            style: TextStyle(
              fontSize: 30,
              color: Colors.blue,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            height: 30,
          ),
          Row(
            children: [
              Column(
                children: [
                  Image.network(
                    'https://cdn.pixabay.com/photo/2023/12/20/22/35/desert-8460850_1280.jpg',
                    width: 200,
                  ),
                  Text('First Image')
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  Image.network(
                    'https://cdn.pixabay.com/photo/2023/12/20/22/35/desert-8460850_1280.jpg',
                    width: 200,
                  ),
                  Text('First Image')
                ],
              )
            ],
          ),
          Text('Hello World'),
          Container(
            height: 30,
          ),
          Text('Hello World'),
          SizedBox(
            height: 30,
          ),
          TextField(
            controller: nameController,
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                print('Button Clicked');
                print(nameController.text);
              },
              child: Text('Click Me')),
        ],
      ),
    );
  }
}
