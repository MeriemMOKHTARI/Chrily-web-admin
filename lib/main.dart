import 'dart:io';

import 'package:chrily_web_admin/views/screens/main_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart'; 

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: kIsWeb || Platform.isAndroid
          ? FirebaseOptions(
            
              apiKey: "AIzaSyDw0f71qUvROC9YKR5Rhnsr9XJzCYK2bIw",
              projectId: "chrily-e3f06",
              storageBucket: "chrily-e3f06.appspot.com",
              messagingSenderId: "1087043678544",
              appId: "1:1087043678544:web:03810389b59aa5eb11bc55",
            )
          : null);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreem(),
            builder: EasyLoading.init(),

    );
  }
}
