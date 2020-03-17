import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:mindbox/models/note.dart';

class NoteModel with ChangeNotifier {
  final List<Note> _notes = [];

  UnmodifiableListView<Note> get allNotes => UnmodifiableListView(_notes);

  void addNote(Note note) {
    _notes.add(note);
    notifyListeners();
  }

  void deleteNote(Note note) {
    _notes.remove(note);
    notifyListeners();
  }
}