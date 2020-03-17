import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:mindbox/models/task.dart';
import 'package:mindbox/providers/taskmodel.dart';

class TaskListItem extends StatelessWidget {
  final Task task;

  TaskListItem({@required this.task});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(task.name),
      subtitle: Text('Son güncelleme: ' + task.createdAt),
      leading: Checkbox(
        value: task.completed, 
        onChanged: (bool checked){
          Provider.of<TaskModel>(context, listen: false).toggleCompleted(task);
        },
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete, color: Colors.red),
        onPressed: () {
          Provider.of<TaskModel>(context, listen: false).deleteTask(task);
        }
      ),
    );
  }
}