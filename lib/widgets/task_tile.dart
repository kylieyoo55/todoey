import 'dart:ui';

import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: ListTile(
        title: Text(
          "this is a title",
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: TaskCheckbox(
          checkStatus: isChecked,
          toggleCheckbox: (nv) {
            setState(() {
              isChecked = nv;
            });
          },
        ),
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkStatus;
  final Function toggleCheckbox;

  TaskCheckbox({this.checkStatus, this.toggleCheckbox});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkStatus,
      onChanged: toggleCheckbox,
    );
  }
}
