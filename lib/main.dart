import 'package:flutter/material.dart';
import 'package:mypi/client/home.dart';
import 'package:mypi/client/message.dart';
import 'package:mypi/client/order.dart';
import 'package:mypi/client/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavScreen(),
    );
  }
}

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedIndex = 0;

  // List of screens for each bottom navigation tab
  final List<Widget> _screens = [
    Home(),
    Message(),
    Order(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: _screens[_selectedIndex], // Display selected screen
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false, // Hide selected labels
  showUnselectedLabels: false, // Hide unselected labels
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:'',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label:'',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pages),
            label:'',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label:'',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
