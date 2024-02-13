import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;


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
  apiKey: "AIzaSyCjUQU8wPj1FhGyV9A0czbHGTJmtJqp3Us",
  authDomain: "samriddi-3rdsem-sec-b.firebaseapp.com",
  projectId: "samriddi-3rdsem-sec-b",
  storageBucket: "samriddi-3rdsem-sec-b.appspot.com",
  messagingSenderId: "1018205099162",
  appId: "1:1018205099162:web:62d84c572e0859b0823b23",
  measurementId: "G-TW3QGMD0H4"
  );

  static const FirebaseOptions android = FirebaseOptions(
  apiKey: "AIzaSyCjUQU8wPj1FhGyV9A0czbHGTJmtJqp3Us",
  authDomain: "samriddi-3rdsem-sec-b.firebaseapp.com",
  projectId: "samriddi-3rdsem-sec-b",
  storageBucket: "samriddi-3rdsem-sec-b.appspot.com",
  messagingSenderId: "1018205099162",
  appId: "1:1018205099162:web:62d84c572e0859b0823b23",
  measurementId: "G-TW3QGMD0H4"
  );

  static const FirebaseOptions ios = FirebaseOptions(
  apiKey: "AIzaSyCjUQU8wPj1FhGyV9A0czbHGTJmtJqp3Us",
  authDomain: "samriddi-3rdsem-sec-b.firebaseapp.com",
  projectId: "samriddi-3rdsem-sec-b",
  storageBucket: "samriddi-3rdsem-sec-b.appspot.com",
  messagingSenderId: "1018205099162",
  appId: "1:1018205099162:web:62d84c572e0859b0823b23",
  measurementId: "G-TW3QGMD0H4"
  );

}