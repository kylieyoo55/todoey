import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "is Done"),
    Task(name: "go to Market"),
    Task(name: "will workOut"),
  ];

  int get taskCount {
    return tasks.length;
  }
}
