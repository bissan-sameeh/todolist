import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todolist/Model/tasks.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(title: 'buy milk'),
    Task(title: 'buy coffee'),
    Task(title: 'buy tea'),
  ];
  int get taskCount => _tasks.length;
  UnmodifiableListView<Task> get tasks =>
      UnmodifiableListView(_tasks); //for view just
  void toggleDoneTaskManager(int index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }

  void addTask(String title) {
    final task = Task(title: title); // store data to task model
    _tasks.add(task); //add task to list of tasks
    notifyListeners();
  }

  void removeTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
