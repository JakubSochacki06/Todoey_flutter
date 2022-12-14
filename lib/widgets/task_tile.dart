import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({required this.isChecked, required this.taskTitle, required this.checkboxCallback, required this.longPressCallback});
  final bool isChecked;
  final String taskTitle;
  final checkboxCallback;
  final longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(taskTitle, style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough : null,
        decorationThickness: 2,
      ),),
      trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: checkboxCallback
      ),
    );
  }
}
