import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static const String _title = 'Titre de mon appbar';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  int _selectedIndex = 0;

//controller rendant les bar de bottomNavigation bar
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Page d\'accueil',
      style: optionStyle,
    ),
    Text(
      'Index 1: Page de Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: Page de l\'école',
      style: optionStyle,
    ),
  ];

//fin controller rendant les bar de bottomNavigation bar

//methode permettant de changer de fragment
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//fin methode permettant de changer de fragment


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //mon app bar
      appBar: AppBar(
        title: const Text('Gestion d\'une école'),
      ),

      //mon body
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      //ma bottom navigation
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
