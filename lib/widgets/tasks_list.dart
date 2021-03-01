import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //List<Task> tasks = Provider.of<TaskData>(context).tasks;
    return Consumer(
      builder: (context, taskData, child) {
        return ListView.builder(
          padding: EdgeInsets.all(20),
          itemBuilder: (context, i) {
            return TaskTile(
              taskTitle: taskData.tasks[i].name,
              isChecked: taskData.tasks[i].isDone,
              checkboxCallback: (nv) {
                // setState(() {
                //   tasks[i].toggleDone();
                // });
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
