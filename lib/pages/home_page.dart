import 'package:flutter/material.dart';

import '../utilities/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // List of to do tasks

  List todoList = [
    ["Make tutorial", false], ["Do exercis", false], 
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        centerTitle: true,
        title: Text('TO DO'),
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder:(context, index) {
          return TodoTile(
            taskName: todoList[index][0], 
            taskCompleted: todoList[index][1], 
            onChanged: onChanged);
        },
        ),
    );
  }
}