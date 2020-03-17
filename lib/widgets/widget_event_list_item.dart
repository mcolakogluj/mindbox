import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:mindbox/models/event.dart';
import 'package:mindbox/providers/eventmodel.dart';

class EventListItem extends StatelessWidget {
  final Event event;

  EventListItem({@required this.event});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(event.name),
      subtitle: Text('Tarih: ' + event.date),
      leading: Checkbox(
        value: event.completed,
        onChanged: (bool checked) {
          Provider.of<EventModel>(context, listen: false).toggleCompleted(event);
        },
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete, color: Colors.red),
        onPressed: () {
          Provider.of<EventModel>(context, listen: false).deleteEvent(event);
        },
      ),
    );
  }
}