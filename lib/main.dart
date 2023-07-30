// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone_project/responsive/mobile_screen_layout.dart';
import 'package:instagram_clone_project/responsive/responsive_layout_screen.dart';
import 'package:instagram_clone_project/responsive/web_screen_layout.dart';
import 'package:instagram_clone_project/utils/colors.dart';

import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC0U0LKVuf4pvFYskbAetl2uODMJ_Kqg-k",
            appId: "1:526777663035:web:9a38859a8c7274e21d661e",
            messagingSenderId: "526777663035",
            projectId: "instagram-clone-project-2c3c2",
            storageBucket: "instagram-clone-project-2c3c2.appspot.com"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home: const ResponsiveLayout(
      //   mobileScrenLayout: MobileScreenLayout(),
      //   webScreenLayout: WebScreenLayout(),
      home: const SignupScreen(),
    );
  }
}
