import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Signup Page',
            style: TextStyle(color: Colors.white),
          )),
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30),
          shrinkWrap: true,
          children: [
            TextField(),
            Container(height: 30),
            TextField(),
            Container(height: 30),
            TextField(),
            Container(height: 30),
            ElevatedButton(onPressed: () {}, child: Text('Signup Now'))
          ],
        ),
      ),
    );
  }
}
