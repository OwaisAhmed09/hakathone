// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

// / Default [FirebaseOptions] for use with your Firebase apps.
// /
// / Example:
// / ```dart
// / import 'firebase_options.dart';
// / // ...
// / await Firebase.initializeApp(
// /   options: DefaultFirebaseOptions.currentPlatform,
// / );
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
    apiKey: 'AIzaSyC4MQ02h2ygSIAkuJW1CrPktlI1n0je-kw',
    appId: '1:162436727783:web:39052e1fd8d28e2e80b342',
    messagingSenderId: '162436727783',
    projectId: 'hacathon-73383',
    authDomain: 'hacathon-73383.firebaseapp.com',
    storageBucket: 'hacathon-73383.appspot.com',
    measurementId: 'G-XVM85R5EMT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDYRI5WXFLmzNis9ptzHccKjwxkxlRtRyM',
    appId: '1:162436727783:android:0afe86725d0e262a80b342',
    messagingSenderId: '162436727783',
    projectId: 'hacathon-73383',
    storageBucket: 'hacathon-73383.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDqOzAY_BZiAcRWcLLfBAqunSWjijNQ-Aw',
    appId: '1:162436727783:ios:a83d52368e738df080b342',
    messagingSenderId: '162436727783',
    projectId: 'hacathon-73383',
    storageBucket: 'hacathon-73383.appspot.com',
    iosClientId: '162436727783-tgkrbk2q74qmsdt7gvvvodvcmfivcrlf.apps.googleusercontent.com',
    iosBundleId: 'com.example.hacathon',
  );
}
