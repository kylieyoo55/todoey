import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

String newTodo;

class AddTaskBottomScreen extends StatelessWidget {
  final Function addTaskCallback;

  AddTaskBottomScreen({this.addTaskCallback});

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
                  addTaskCallback(newTodo);
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
