import 'package:flutter/material.dart';
import 'package:food_management_app/page/createNote/createNote.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("飲食管理 APP"),
        leading: IconButton(onPressed: () {  }, icon: Icon(Icons.menu),),
      ),
      body: Center(
        child: Text("開發中..."),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateNote())); },
        child: Icon(Icons.add),
      ),
    );
  }
}
