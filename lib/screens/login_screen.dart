import 'package:flutter/material.dart';
import 'package:flutter_firebase_all_auth/screens/login_email_password.dart';
import 'package:flutter_firebase_all_auth/screens/phone_screen.dart';
import 'package:flutter_firebase_all_auth/screens/sigup_email_password_screen.dart';

import '../widget/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onPressed: () {
                Navigator.pushNamed(context, EmailPasswordSignUp.routeName);
              },
              text: 'Email/Password Sign Up',
            ),
            CustomButton(
              onPressed: () {
                Navigator.pushNamed(context, EmailPasswordLogin.routeName);
              },
              text: 'Email/Password Login',
            ),
            CustomButton(
              onPressed: () {
                Navigator.pushNamed(context, PhoneScreen.routeName);
              },
              text: 'Phone Sign In',
            ),
            CustomButton(
              onPressed: () {
              },
              text: 'Google Sign In',
            ),
            CustomButton(
              onPressed: () {
              },
              text: 'Facebook Sign In',
            ),
            CustomButton(
              onPressed: () {
              },
              text: 'Anonymous Sign In',
            ),
          ],
        ),
      ),
    );
  }
}