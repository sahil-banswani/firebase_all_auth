import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_all_auth/services/firebase_auth_methods.dart';
import 'package:flutter_firebase_all_auth/widget/custom_button.dart';

import '../widget/custom_text_feild.dart';

class EmailPasswordLogin extends StatefulWidget {
  static String routeName = '/login-email-password';
  const EmailPasswordLogin({super.key});

  @override
  State<EmailPasswordLogin> createState() => _EmailPasswordLoginState();
}

class _EmailPasswordLoginState extends State<EmailPasswordLogin> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void loginUser() {
    FirebaseAuthMethods(auth: FirebaseAuth.instance).loginWithEmail(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Login',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextFeild(
                controller: emailController,
                hintText: 'Enter your Email',
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextFeild(
                controller: emailController,
                hintText: 'Enter your Password',
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            CustomButton(onPressed: loginUser, text: 'Login'),
          ],
        ),
      ),
    );
  }
}
