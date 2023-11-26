import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  
  const TodoTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25.0),
      child: Container(
        padding: EdgeInsets.all(25),
        child: Row(
          children: [
            // Checkbox
            Checkbox(value: value, onChanged: onChanged)

            // Task Name
            Text("Make tutorial"),

          ],
        ),
        decoration: BoxDecoration(
          color: Colors.deepPurple[400],
          borderRadius: BorderRadius.circular(14),
        ),
      ),
    );
  }
}