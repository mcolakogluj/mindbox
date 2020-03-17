import 'package:flutter/material.dart';

class Event {
  String name;
  bool completed;
  DateTime date;
  DateTime createdAt;
  DateTime updatedAt;
  
  Event({
    @required this.name,
    @required this.completed,
    @required this.date,
    this.createdAt,
    this.updatedAt,
  });

  void eventCompleted() {
    completed = !completed;
  }
}