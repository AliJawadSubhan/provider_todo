// import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'tasks_lists.dart';

class TasksData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  List<Task> get tasks => _tasks;

  addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  removefromList(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  updateTasks(Task taks) {
    taks.isDone;
    notifyListeners();
  }

  int get getTasksCount => _tasks.length;
}
