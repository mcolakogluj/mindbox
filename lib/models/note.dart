import 'package:flutter/material.dart';

class Note {
  String title;
  DateTime createdAt;
  DateTime updatedAt;

  Note({
    @required this.title,
    this.createdAt,
    this.updatedAt,
  });
}