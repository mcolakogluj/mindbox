import 'package:flutter/material.dart';

class Task{
  String name;
  bool completed;
  String createdAt;
  String updatedAt;

  Task({
    @required this.name,
    @required this.completed,
    this.createdAt,
    this.updatedAt,
    });

  void taskCompleted() {
    completed = !completed;
  }
}