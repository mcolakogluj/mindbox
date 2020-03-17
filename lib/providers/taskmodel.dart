import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:mindbox/models/task.dart';

class TaskModel with ChangeNotifier {
  final List<Task> _tasks = [];

  UnmodifiableListView<Task> get incompleteTasks => UnmodifiableListView(_tasks.where((task) => !task.completed));
  UnmodifiableListView<Task> get completedTasks => UnmodifiableListView(_tasks.where((task) => task.completed));

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void toggleCompleted(Task task) {
    final taskIndex = _tasks.indexOf(task);
    _tasks[taskIndex].taskCompleted();
    notifyListeners();
  }
}