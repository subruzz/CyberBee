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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBDdb2WQpObpfbJTPSMbC4JJVIb9Fk7qWw',
    appId: '1:833660204691:web:63f3ed5e235a94a39dff66',
    messagingSenderId: '833660204691',
    projectId: 'cyberbee-9984d',
    authDomain: 'cyberbee-9984d.firebaseapp.com',
    storageBucket: 'cyberbee-9984d.appspot.com',
    measurementId: 'G-N66KCFFRR5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC9uYa9PvvCeB1GGF4tiaYebLr-R97Q1As',
    appId: '1:833660204691:android:b95b977455f26dcc9dff66',
    messagingSenderId: '833660204691',
    projectId: 'cyberbee-9984d',
    storageBucket: 'cyberbee-9984d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDnmAT0g-RVOKKa2OEZvU6NqNo_cf3HD2E',
    appId: '1:833660204691:ios:89f57f5d548c02cf9dff66',
    messagingSenderId: '833660204691',
    projectId: 'cyberbee-9984d',
    storageBucket: 'cyberbee-9984d.appspot.com',
    iosBundleId: 'com.example.cyberBee',
  );
}
