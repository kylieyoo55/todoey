import 'dart:ui';
import 'package:todoey/models/task.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

String newTodo;

class AddTaskBottomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Text(
                "ADD TASK",
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (nv) {
                  newTodo = nv;
                },
              ),
              SizedBox(
                height: 30,
              ),
              FlatButton(
                minWidth: 300,
                height: 60,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.lightBlueAccent,
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTodo);
                  Navigator.pop(context);
                },
                child: Text(
                  "ADD",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    //  fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
