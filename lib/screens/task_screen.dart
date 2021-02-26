import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.lightBlueAccent,
        icon: Icon(Icons.add),
        label: Text("SAVE"),
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
                  "12 Tasks",
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
