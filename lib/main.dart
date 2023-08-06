import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_all_auth/firebase_options.dart';
import 'package:flutter_firebase_all_auth/screens/login_email_password.dart';
import 'package:flutter_firebase_all_auth/screens/login_screen.dart';
import 'package:flutter_firebase_all_auth/screens/phone_screen.dart';
import 'package:flutter_firebase_all_auth/screens/sigup_email_password_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firebase All Authentication Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
      routes: {
          EmailPasswordSignUp.routeName: (context) =>
              const EmailPasswordSignUp(),
          EmailPasswordLogin.routeName: (context) => const EmailPasswordLogin(),
          PhoneScreen.routeName: (context) =>  PhoneScreen(),
        },
    ); 
  }
}
