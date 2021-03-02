import 'dart:ui';
import 'package:todoey/models/task.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: ListTile(
        onLongPress: () =>
            Provider.of<TaskData>(context, listen: false).deleteTask(taskTitle),
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback,
        ),
      ),
    );
  }
}
