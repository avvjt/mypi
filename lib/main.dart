import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mypi/client/home.dart';
import 'package:mypi/client/message.dart';
import 'package:mypi/client/order.dart';
import 'package:mypi/client/profile.dart';
import 'package:mypi/constants/colors.dart';
import 'package:mypi/widgets/svg_bottomNavigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavScreen(),
    );
  }
}

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

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
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgIcon(
              assetName: 'lib/assets/home.svg', // Your SVG path
              color: _selectedIndex == 0 ? AppColors.green : AppColors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgIcon(
              assetName: 'lib/assets/message.svg',
              color: _selectedIndex == 1 ? AppColors.green : AppColors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgIcon(
              assetName: 'lib/assets/order.svg',
              color: _selectedIndex == 2 ? AppColors.green : AppColors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgIcon(
              assetName: 'lib/assets/profile.svg',
              color: _selectedIndex == 3 ? AppColors.green : AppColors.white,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: AppColors.backgroundLight,
        unselectedItemColor: AppColors.white,
        selectedItemColor: AppColors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
