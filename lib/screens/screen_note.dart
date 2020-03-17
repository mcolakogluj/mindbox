import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:mindbox/providers/notemodel.dart';
import 'package:mindbox/widgets/widget_note_list.dart';

class ScreenNote extends StatefulWidget {
  @override
  _ScreenNoteState createState() => _ScreenNoteState();
}

class _ScreenNoteState extends State<ScreenNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notlar'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurple[300],
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add, color: Colors.white),
            onPressed: null,
          ),
        ],
      ),
      body: Container(
        child: Consumer<NoteModel>(
          builder: (context, notes, child) => NoteList(notes: notes.allNotes),
        ),
      ),
    );
  }
}