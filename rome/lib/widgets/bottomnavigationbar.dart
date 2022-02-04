import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Redis',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.travel_explore),
          label: 'Invenis',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.help),
          label: 'Qui sumus',
        ),
      ],
      //currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: onTabTapped,
      //onTap: _onItemTapped,
    );
  }

  void onTabTapped(index) {
    switch (index) {
      case 0:
        print("redis");
        break;
      case 1:
        print("invenis");
        break;
      case 2:
        print("qui sumus ?");
        break;
    }
  }
}
