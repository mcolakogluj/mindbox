import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:mindbox/models/event.dart';

class EventModel with ChangeNotifier {
  final List<Event> _events = [];

  UnmodifiableListView<Event> get incompleteEvents => UnmodifiableListView(_events.where((event) => !event.completed));
  UnmodifiableListView<Event> get completedEvents => UnmodifiableListView(_events.where((event) => event.completed));

  void addEvent(Event event) {
    _events.add(event);
    notifyListeners();
  }

  void deleteEvent(Event event) {
    _events.remove(event);
    notifyListeners();
  }

  void toggleCompleted(Event event) {
    final eventIndex = _events.indexOf(event);
    _events[eventIndex].eventCompleted();
    notifyListeners();
  }
}