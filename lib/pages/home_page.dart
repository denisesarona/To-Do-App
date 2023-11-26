import 'package:flutter/material.dart';

import '../utilities/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        centerTitle: true,
        title: Text('TO DO'),
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          TodoTile(),
        ],
      ),
    );
  }
}