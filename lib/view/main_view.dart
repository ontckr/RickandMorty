import 'package:flutter/material.dart';
import 'package:rick_and_morty/view/character_view.dart';
import 'package:rick_and_morty/view/episodes_view.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[CharacterView(), EpisodesView()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            label: 'Charecters',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: 'Episodes',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green[400],
        onTap: _onItemTapped,
      ),
    );
  }
}
