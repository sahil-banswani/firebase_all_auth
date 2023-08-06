import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_all_auth/services/firebase_auth_methods.dart';

import '../widget/custom_button.dart';
import '../widget/custom_text_feild.dart';

class EmailPasswordSignUp extends StatefulWidget {
  static String routeName = '/signup-email-password';
  const EmailPasswordSignUp({super.key});

  @override
  State<EmailPasswordSignUp> createState() => _EmailPasswordSignUpState();
}

class _EmailPasswordSignUpState extends State<EmailPasswordSignUp> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void signUpUser() async {
    FirebaseAuthMethods(auth: FirebaseAuth.instance)
    .signupWithEmail(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
        context: context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Sign Up',
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
              controller: passwordController,
              
              hintText: 'Enter your Password',
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          CustomButton(onPressed: signUpUser, text: 'SignUp'),
        ],
      ),
    ));
  }
}
