import 'dart:ui';

import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/tasks_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'add_task_bottom_screen.dart';
import 'package:todoey/models/task.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    //Provider Task List
    List<Task> tasks = Provider.of<TaskData>(context).tasks;
    TaskData provider = Provider.of<TaskData>(context);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.lightBlueAccent,
        icon: Icon(Icons.add),
        label: Text("ADD"),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskBottomScreen(),
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                    size: 30,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Todoey",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                Text(
                  "${Provider.of<TaskData>(context).taskCount} Tasks",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: TasksList(),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
