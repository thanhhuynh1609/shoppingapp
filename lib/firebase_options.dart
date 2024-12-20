// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCe99_w1H1qWznNGFVb1PnP3TiM7_C9ADw',
    appId: '1:175331934322:web:e2fee7f1f41dfb4988c2eb',
    messagingSenderId: '175331934322',
    projectId: 'shopapp-6f934',
    authDomain: 'shopapp-6f934.firebaseapp.com',
    storageBucket: 'shopapp-6f934.firebasestorage.app',
    measurementId: 'G-V3CWFMP2V9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAZVsjR1Tr6jq8KNKaWh5N0Fa8oP8f-CDY',
    appId: '1:175331934322:android:5784715f0201433088c2eb',
    messagingSenderId: '175331934322',
    projectId: 'shopapp-6f934',
    storageBucket: 'shopapp-6f934.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBpdDaB0e0AJUpgS6TN3j5BryDgU8swV9E',
    appId: '1:175331934322:ios:f8e60df3fb58008588c2eb',
    messagingSenderId: '175331934322',
    projectId: 'shopapp-6f934',
    storageBucket: 'shopapp-6f934.firebasestorage.app',
    iosBundleId: 'com.example.shoppingApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBpdDaB0e0AJUpgS6TN3j5BryDgU8swV9E',
    appId: '1:175331934322:ios:f8e60df3fb58008588c2eb',
    messagingSenderId: '175331934322',
    projectId: 'shopapp-6f934',
    storageBucket: 'shopapp-6f934.firebasestorage.app',
    iosBundleId: 'com.example.shoppingApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCe99_w1H1qWznNGFVb1PnP3TiM7_C9ADw',
    appId: '1:175331934322:web:ad53daba3178c5ba88c2eb',
    messagingSenderId: '175331934322',
    projectId: 'shopapp-6f934',
    authDomain: 'shopapp-6f934.firebaseapp.com',
    storageBucket: 'shopapp-6f934.firebasestorage.app',
    measurementId: 'G-6LQ01L08T1',
  );
}
