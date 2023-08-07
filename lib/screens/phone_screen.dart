import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_all_auth/services/firebase_auth_methods.dart';

import '../widget/custom_button.dart';
import '../widget/custom_text_feild.dart';

class PhoneScreen extends StatefulWidget {
    static String routeName = '/phone-screen';

  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {

  final TextEditingController phoneNumberController = TextEditingController();

  void phoneSignIn() {
    FirebaseAuthMethods(auth: FirebaseAuth.instance).phoneOTPSignIn(phoneNumberController.text); 
  }

  @override
  void dispose() {
    super.dispose();
    phoneNumberController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              child: Image.asset('lib/assets/images/img1.png',)),
            const SizedBox(height: 40,),
            const Text(
              'Phone Verification',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextFeild(
                controller: phoneNumberController,
                hintText: 'Enter your Phone Number',
              ),
            ),
            
            const SizedBox(height: 40,),
            CustomButton(onPressed: phoneSignIn, text: 'Send Otp'),
          ],
        ),
      )
    );
  }
}