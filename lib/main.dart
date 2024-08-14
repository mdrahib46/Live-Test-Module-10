import 'package:flutter/material.dart';
import 'package:textstyleapp/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge:  TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontSize: 14,fontStyle: FontStyle.italic,),
        ),

      ),
      home: Homepage(),
    );
  }
}
