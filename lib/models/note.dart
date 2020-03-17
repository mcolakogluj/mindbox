import 'package:flutter/material.dart';

class Note {
  String title;
  String createdAt;
  String updatedAt;

  Note({
    @required this.title,
    this.createdAt,
    this.updatedAt,
  });
}