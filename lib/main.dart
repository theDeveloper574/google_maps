import 'package:assign/google_map/screen3.dart';
import 'package:assign/home.dart';
import 'package:assign/snapEffect.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'google__map.dart';
import 'google_map/screen1.dart';
import 'google_map/screen2.dart';
import 'new_screens/screen1.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // options: FirebaseOptions(
    //   apiKey: "XXX",
    //   appId: "XXX",
    //   messagingSenderId: "XXX",
    //   projectId: "XXX",
    // ),
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // primaryColor:  Colors.white
      ),
      debugShowCheckedModeBanner: false,
      home: ScreenGoogle1(),
    );
  }
}
