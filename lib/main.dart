
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project/models/restaurant.dart';
import 'package:project/pages/home_page.dart';
import 'package:project/services/auth/auth_gate.dart';
import 'package:project/themes/theme_provider.dart';



import 'package:provider/provider.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  
  Platform.isAndroid?
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyCs9Papk16ZmpTOu9To6Roz1s0EoUnh6fI", 
      appId: "1:406260615219:android:7f1b62c02138e39cd87b46",
       messagingSenderId: "406260615219", 
       projectId: "project-5a2ef"
       ),

  ):await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        //theme provider
        ChangeNotifierProvider(create: (context)=>ThemeProvider()),

        //restaurant provider
        ChangeNotifierProvider(create: (context)=>Restaurant())

      ],
      child: MyApp(),
      )
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:AuthGate(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
