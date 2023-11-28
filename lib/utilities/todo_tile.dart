import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  
  TodoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left:25.0, right:25, top:25),
      child: Container(
        padding: EdgeInsets.all(25),
        child: Row(
          children: [
            // Checkbox
            Checkbox(
              value: taskCompleted, 
              onChanged: onChanged,
              activeColor: Colors.black,
              ),

            // Task Name
            Text(
              taskName,
              style: TextStyle(
                decoration: taskCompleted ? TextDecoration.lineThrough: TextDecoration.none,
              ),
              ),
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