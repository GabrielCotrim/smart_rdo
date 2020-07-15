import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smart_rdo/screens/agenda_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            title: Text('Agenda'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Áreas'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff5676ef),
        onTap: _onItemTapped,
      ),
    );
  }

  List<Widget> _pageOptions = <Widget>[
    AgendaScreen(),
    Center(
      child: Text('Another page'),
    ),
  ];
}