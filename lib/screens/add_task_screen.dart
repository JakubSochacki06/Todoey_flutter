import 'package:flutter/material.dart';
import 'package:todoo/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoo/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    String newTaskTitle = 's';

    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF757575),
        border: Border(
          top: BorderSide(width: 0, color: Color(0xFF757575)),
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle = newText;
              },
            ),
            FlatButton(
              onPressed: (){
                Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
              },
              child: Text('Add', style: TextStyle(color: Colors.white),),
              color: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
