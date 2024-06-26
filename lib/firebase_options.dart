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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAToFCrqkqn2iIScmWNnDVOVJSLhEm8LdI',
    appId: '1:764881220448:web:302e73ac4f1a1bd26f6405',
    messagingSenderId: '764881220448',
    projectId: 'cupidfirebase',
    authDomain: 'cupidfirebase.firebaseapp.com',
    storageBucket: 'cupidfirebase.appspot.com',
    measurementId: 'G-ED45YEKDD8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAP1nLS0IkqP_iLox_OuVJnVzZVZ_MV1WQ',
    appId: '1:764881220448:android:4493d87517e9c7236f6405',
    messagingSenderId: '764881220448',
    projectId: 'cupidfirebase',
    storageBucket: 'cupidfirebase.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBQRleb-bAeBjFKSiGUnH2-IiFoMxBJy8k',
    appId: '1:764881220448:ios:573518ae8393cea16f6405',
    messagingSenderId: '764881220448',
    projectId: 'cupidfirebase',
    storageBucket: 'cupidfirebase.appspot.com',
    iosBundleId: 'com.example.cupid',
  );
}
