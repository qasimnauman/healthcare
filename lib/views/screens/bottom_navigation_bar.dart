import 'package:flutter/material.dart';
import 'package:healthcare/views/screens/dashboard/analytics.dart';
import 'package:healthcare/views/screens/dashboard/finances.dart';
import 'package:healthcare/views/screens/dashboard/home.dart';
import 'package:healthcare/views/screens/dashboard/menu.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  _BottomNavigationBarScreenState createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    AnalyticsScreen(),
    FinancesScreen(),
    MenuScreen(),
  ];

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
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics),
            label: 'Analytics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Finances',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu), 
            label: 'Menu'
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: const Color.fromARGB(255, 94, 93, 93),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        selectedItemColor: Color.fromRGBO(64, 124, 226, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}