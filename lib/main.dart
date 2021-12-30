import 'package:assign/google_map/screen3.dart';
import 'package:assign/new_screens/home.dart';
import 'package:assign/new_screens/snapEffect.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Food_app/welcome_screen.dart';
import 'google_map/screen1.dart';
import 'new_screens/detailed.dart';
import 'new_screens/list_view12.dart';

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
      home: ListView1(),
    );
  }
}
