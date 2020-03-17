import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:mindbox/models/note.dart';
import 'package:mindbox/providers/notemodel.dart';

class NoteListItem extends StatelessWidget {
  final Note note;

  NoteListItem({@required this.note});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(note.title),
      subtitle: Text('Son güncelleme: ' + note.createdAt.toIso8601String()),
      leading: IconButton(
        icon: Icon(Icons.edit, color: Colors.blue),
        onPressed: null,
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete, color: Colors.red),
        onPressed: () {
          Provider.of<NoteModel>(context, listen: false).deleteNote(note);
        }
      ),
    );
  }
}