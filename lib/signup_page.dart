import 'package:flutter/material.dart';

final TextEditingController nameController = TextEditingController();
final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

bool validateForm() {
  if (nameController.text.length < 2) {
    print('Name is incorrect');
    return false;
  } else if (emailController.text.length < 2) {
    print('Email is incorrect');
    return false;
  } else if (passwordController.text.length < 3) {
    print('Password is incorrect');
    return false;
  } else {
    return true;
  }
}

void performLogin() {
  if (validateForm()) {
    print('Login Success');
  }
}

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
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            Container(height: 30),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            Container(height: 30),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            Container(height: 30),
            ElevatedButton(
                onPressed: () {
                  performLogin();
                },
                child: Text('Signup Now'))
          ],
        ),
      ),
    );
  }
}
