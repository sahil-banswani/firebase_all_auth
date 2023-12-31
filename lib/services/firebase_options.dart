// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBRgLgu9Fxpo-aiC6KG1gDdH-BNblW-1Ts',
    appId: '1:728396960077:web:c6f7cedd28ab71e854e704',
    messagingSenderId: '728396960077',
    projectId: 'fir-flutter-auth-7890d',
    authDomain: 'fir-flutter-auth-7890d.firebaseapp.com',
    storageBucket: 'fir-flutter-auth-7890d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBe_QUQoSI0tJFFixwjcwvx9zORSIZFYgQ',
    appId: '1:728396960077:android:480d9545fe62bc6854e704',
    messagingSenderId: '728396960077',
    projectId: 'fir-flutter-auth-7890d',
    storageBucket: 'fir-flutter-auth-7890d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDuOKdBmGiUh3cQ8hutozRJucFWF_iHZWA',
    appId: '1:728396960077:ios:e6ed4cb5e78ba59654e704',
    messagingSenderId: '728396960077',
    projectId: 'fir-flutter-auth-7890d',
    storageBucket: 'fir-flutter-auth-7890d.appspot.com',
    iosClientId: '728396960077-g8brol7ui3i9bnucq3qesaba1rf4v7gu.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFirebaseAllAuth',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDuOKdBmGiUh3cQ8hutozRJucFWF_iHZWA',
    appId: '1:728396960077:ios:066d9697817dbdf954e704',
    messagingSenderId: '728396960077',
    projectId: 'fir-flutter-auth-7890d',
    storageBucket: 'fir-flutter-auth-7890d.appspot.com',
    iosClientId: '728396960077-t44818k1c8ifqg6gpjnc9rakcij7fs0i.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFirebaseAllAuth.RunnerTests',
  );
}
