import 'package:flutter/material.dart';
import 'package:mindbox/utils/chronos.dart';
import 'package:provider/provider.dart';

import 'package:mindbox/utils/theme.dart';
import 'package:mindbox/models/task.dart';
import 'package:mindbox/providers/taskmodel.dart';

class ScreenAddTask extends StatefulWidget {
  @override
  _ScreenAddTaskState createState() => _ScreenAddTaskState();
}

class _ScreenAddTaskState extends State<ScreenAddTask> {
  TextEditingController _taskNameController = TextEditingController();
  bool _completedStatus = false;

  @override 
  void dispose() {
    _taskNameController.dispose();
    super.dispose();
  }

  void addTaskFunc() {
    final _name = _taskNameController.text;
    final bool _completed = _completedStatus;

    if(_name.isNotEmpty) {
      final Task _task = Task(
        name: _name,
        completed: _completed,
        createdAt: Chronos.getDateShort(DateTime.now().toString()),
      );
      Provider.of<TaskModel>(context, listen: false).addTask(_task);
      Navigator.pop(context);
      _taskNameController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Görev Ekle'),
        centerTitle: true,
        backgroundColor: theme.accentColor,
        elevation: 0,
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextField(
                    controller: _taskNameController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Görev Adı',
                      hintStyle: TextStyle(color: Colors.blueGrey[900])
                    ),
                  ),
                  CheckboxListTile(
                    title: Text('Tamamlandı mı?', style: TextStyle(color: Colors.blueGrey[900])),
                    value: _completedStatus, 
                    onChanged: (checked) => setState(() {
                      _completedStatus = checked;
                    }),
                  ),
                  ButtonTheme(
                    minWidth: double.infinity,
                    height: 60,
                    child: FlatButton(
                      onPressed: addTaskFunc,
                      color: Colors.blueGrey[900],
                      child: Icon(Icons.add, color: Colors.white)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}