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
    apiKey: 'AIzaSyCo2Xj8Ul9HQ5GNq0Q9wXHh-XIqjcG71Uw',
    appId: '1:632534901534:web:723b014075545928511f0f',
    messagingSenderId: '632534901534',
    projectId: 'secondsem-1cb59',
    authDomain: 'secondsem-1cb59.firebaseapp.com',
    storageBucket: 'secondsem-1cb59.appspot.com',
    measurementId: 'G-FH4S903JFH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAiaW1c9btdDaIQQm_R7tHPVOyn0m44AqU',
    appId: '1:632534901534:android:f790596508b1809f511f0f',
    messagingSenderId: '632534901534',
    projectId: 'secondsem-1cb59',
    storageBucket: 'secondsem-1cb59.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBTzw1v59JiOhPPnTqIlF-in8Lx7xfMOCs',
    appId: '1:632534901534:ios:a806a65017583568511f0f',
    messagingSenderId: '632534901534',
    projectId: 'secondsem-1cb59',
    storageBucket: 'secondsem-1cb59.appspot.com',
    iosBundleId: 'com.example.secondsemflut',
  );
}
