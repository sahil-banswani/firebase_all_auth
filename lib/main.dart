import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_all_auth/screens/homeScreen.dart';
import 'package:flutter_firebase_all_auth/services/firebase_auth_methods.dart';
import 'package:provider/provider.dart';
import 'package:flutter_firebase_all_auth/services/firebase_options.dart';
import 'package:flutter_firebase_all_auth/screens/login_email_password.dart';
import 'package:flutter_firebase_all_auth/screens/login_screen.dart';
import 'package:flutter_firebase_all_auth/screens/phone_screen.dart';
import 'package:flutter_firebase_all_auth/screens/sigup_email_password_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<FirebaseAuthMethods>(
          create: (_) => FirebaseAuthMethods(auth: FirebaseAuth.instance),
        ),
        StreamProvider(create: (context) => context.read<FirebaseAuthMethods>().authState,
        initialData: null),

        
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Firebase All Authentication Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: const AuthWrapper(),
        routes: {
          EmailPasswordSignUp.routeName: (context) =>
              const EmailPasswordSignUp(),
          EmailPasswordLogin.routeName: (context) => const EmailPasswordLogin(),
          PhoneScreen.routeName: (context) => const PhoneScreen(),
        },
      ),
    );
  }
}

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();

    if(firebaseUser != null) {
      return const HomeScreen();
    }
    else {
      return const LoginScreen();
    }
  }
}