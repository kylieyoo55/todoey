import 'package:flutter/material.dart';
import 'package:todoey/screens/task_screen.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TaskData provider = Provider.of<TaskData>(context);
    //List<Task> tasks = Provider.of<TaskData>(context).tasks;
    return ListView.builder(
      padding: EdgeInsets.all(20),
      itemBuilder: (context, i) {
        final task = provider.tasks[i];
        return TaskTile(
          taskTitle: task.name,
          isChecked: task.isDone,
          checkboxCallback: (nv) {
            provider.updateTask(task);
            // setState(() {
            //   provider.tasks[i].toggleDone();
            // });
          },
        );
      },
      itemCount: Provider.of<TaskData>(context).taskCount,
    );
  }
}
