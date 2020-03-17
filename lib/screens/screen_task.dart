import 'package:flutter/material.dart';
import 'package:mindbox/tabs/tab_task_incomplete.dart';
import 'package:mindbox/tabs/tab_task_completed.dart';

class ScreenTask extends StatefulWidget {
  @override
  _ScreenTaskState createState() => _ScreenTaskState();
}

class _ScreenTaskState extends State<ScreenTask> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override void initState() {
    _controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Görevler'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurple[300],
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add, color: Colors.white),
            onPressed: null,
          ),
        ],
        bottom: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.check_box_outline_blank)),
            Tab(icon: Icon(Icons.check_box)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          IncompleteTasks(),
          CompletedTasks(),
        ],
      ),
    );
  }
}