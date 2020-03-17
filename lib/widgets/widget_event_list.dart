import 'package:flutter/material.dart';

import 'package:mindbox/models/event.dart';
import 'package:mindbox/widgets/widget_event_list_item.dart';

class EventList extends StatelessWidget {
  final List<Event> events;

  EventList({@required this.events});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getEvents(),
    );
  }

  List<Widget> getEvents() {
    return events.map((event) => EventListItem(event: event)).toList();
  }
}