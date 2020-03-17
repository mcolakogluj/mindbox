import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:mindbox/providers/taskmodel.dart';
import 'package:mindbox/widgets/widget_task_list.dart';

class IncompleteTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<TaskModel>(
        builder: (context, tasks, child) => TaskList(
          tasks: tasks.incompleteTasks,
        ),
      ),
    );
  }
}