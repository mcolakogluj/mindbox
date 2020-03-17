import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:mindbox/providers/eventmodel.dart';
import 'package:mindbox/widgets/widget_event_list.dart';

class IncompleteEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<EventModel>(
        builder: (context, events, child) => EventList(
          events: events.incompleteEvents,
        ),
      ),
    );
  }
}