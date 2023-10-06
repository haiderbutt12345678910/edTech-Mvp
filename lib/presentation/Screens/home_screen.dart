import 'package:flutter/material.dart';
import 'package:flutter_application_assignmnetapp/presentation/Screens/Equations/equation_overview_screen.dart';
import 'package:flutter_application_assignmnetapp/presentation/Screens/Gk/gk_screen.dart';
import 'package:flutter_application_assignmnetapp/presentation/Screens/Mcqs/mcq_overview_screen.dart';

class HomwScreen extends StatefulWidget {
  const HomwScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomwScreenState createState() => _HomwScreenState();
}

class _HomwScreenState extends State<HomwScreen> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = const [
    EquationOverViewScreen(),
    GkScreen(),
    McqsOverViewScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Assignment App'),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.white,
          backgroundColor: Colors.green,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.calculate),
              label: 'Equations',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'G.K',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.quiz),
              label: 'Quiz',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
