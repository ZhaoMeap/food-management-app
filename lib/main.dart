import 'package:flutter/material.dart';
import 'package:food_management_app/page/home/home.dart';

import 'page/createNote/createNote.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '#',
      routes: {
        '#': (context)=> MyHomePage(),
        '#createNote': (context)=> CreateNote(),
      },
      title: 'Food Management APP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
