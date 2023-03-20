import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  final List<String> _pageTitles = [
    'HomePage',
    'EmailPage',
    'ProfilePage',
  ];

  final List<Widget> _pages = [
    const Align(
      alignment: Alignment.topLeft,
      child: Text('Home Page', style: TextStyle(fontSize: 24.0)),
    ),
    const Center(
      child: Text('Email Page', style: TextStyle(fontSize: 24.0)),
    ),
    const Center(
      child: Text('Profile Page', style: TextStyle(fontSize: 24.0)),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      _updatePage();
    });
  }

  void _updatePage() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '1302204044 - Muhammad Rovino Sanjaya',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: _pages[_currentIndex],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 255, 141, 34),
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.email),
              label: 'Email',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          unselectedItemColor: const Color.fromARGB(255, 8, 107, 21),
          selectedItemColor: const Color.fromARGB(255, 0, 0, 145),
        ),
      ),
    );
  }
}
