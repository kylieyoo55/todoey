import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "is Done"),
    Task(name: "go to Market"),
    Task(name: "will workOut"),
  ];

  List<Task> get tasks {
    return _tasks;
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(nv) {
    _tasks.add(
      Task(name: nv),
    );
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(String task) {
    _tasks.removeWhere((el) => el.name == task);
    notifyListeners();
    //replytile.removeWhere((item) => item.id == '001')
  }
}
