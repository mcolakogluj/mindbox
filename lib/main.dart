import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:mindbox/providers/taskmodel.dart';
import 'package:mindbox/providers/eventmodel.dart';
import 'package:mindbox/providers/notemodel.dart';

import 'package:mindbox/theme.dart';
import 'package:mindbox/main_scaffold.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TaskModel>(create: (context) => TaskModel()),
        ChangeNotifierProvider<EventModel>(create: (context) => EventModel()),
        ChangeNotifierProvider<NoteModel>(create: (context) => NoteModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'mindbox',
        theme: theme,
        home: MainScaffold(),
      ),
    );
  }
}
