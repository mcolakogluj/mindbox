import 'package:flutter/material.dart';
import 'package:mindbox/screens/screen_task.dart';
import 'package:mindbox/screens/screen_event.dart';
import 'package:mindbox/screens/screen_note.dart';
import 'package:mindbox/screens/screen_profile.dart';

class MainScaffold extends StatefulWidget {
  @override
  _MainScaffoldState createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int _currentIndex = 0;

  List<Widget> _widgets = <Widget>[
    ScreenTask(),
    ScreenEvent(),
    ScreenNote(),
    ScreenProfile(),
  ];

  void _tapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgets.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.edit_attributes), title: Text('Görevler')),
          BottomNavigationBarItem(icon: Icon(Icons.event_note), title: Text('Etkinlikler')),
          BottomNavigationBarItem(icon: Icon(Icons.edit), title: Text('Notlar')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Profil')),
        ],
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
        elevation: 0,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.deepPurple[300],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _tapped,
      ),
    );
  }
}