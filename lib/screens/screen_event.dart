import 'package:flutter/material.dart';
import 'package:mindbox/tabs/tab_event_incomplete.dart';
import 'package:mindbox/tabs/tab_event_completed.dart';

class ScreenEvent extends StatefulWidget {
  @override
  _ScreenEventState createState() => _ScreenEventState();
}

class _ScreenEventState extends State<ScreenEvent> with SingleTickerProviderStateMixin{
  TabController _controller;

  @override void initState() {
    _controller = TabController(length: 2, vsync: this);
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Etkinlikler'),
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
            Tab(icon: Icon(Icons.calendar_today)),
            Tab(icon: Icon(Icons.event_available)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          IncompleteEvents(),
          CompletedEvents(),
        ],
      ),
    );
  }
}