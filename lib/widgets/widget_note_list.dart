import 'package:flutter/material.dart';

import 'package:mindbox/models/note.dart';
import 'package:mindbox/widgets/widget_note_list_item.dart';

class NoteList extends StatelessWidget {
  final List<Note> notes;

  NoteList({@required this.notes});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getNotes(),
    );
  }

  List<Widget> getNotes() {
    return notes.map((note) => NoteListItem(note: note)).toList();
  }
}