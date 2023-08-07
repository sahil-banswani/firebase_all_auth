import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_all_auth/services/firebase_auth_methods.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void signOut() {
    FirebaseAuthMethods(auth: FirebaseAuth.instance).signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Loged in'),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 45,
              child: ElevatedButton(
              onPressed: signOut,
              child: const Text('Sign Out'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green.shade600,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                )
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
