import 'package:cu_krg_ait/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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

void performSignup() {
  if (validateForm()) {
    print('Signup Success');
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Text(
            'Login Page',
            style: TextStyle(color: Colors.white),
          )),
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30),
          shrinkWrap: true,
          children: [
            Lottie.asset('assets/lottie/signup_animation.json'),
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
                  performSignup();
                },
                child: Text('Signup Now')),
            Container(
              height: 30,
            ),
            InkWell(
              onTap: () {
                print('Redirecting to Signup Page');
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => SignupPage(),
                    ),
                    (route) => false);
              },
              child: Center(child: Text('Don\'t have an account? Create Now')),
            )
          ],
        ),
      ),
    );
  }
}
