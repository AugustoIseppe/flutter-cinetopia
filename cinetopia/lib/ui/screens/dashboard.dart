import 'package:cinetopia/ui/screens/releases.dart';
import 'package:cinetopia/ui/screens/search_movies.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {

  const Dashboard({ super.key });

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  int _currentIndex = 0;

  final List<Widget> _screens = [
    SearchMovies(),
    Releases(),
  ];

  void updateIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

   @override
   Widget build(BuildContext context) {
       return Scaffold(
         backgroundColor: Color(0xFF1D0E44),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: _screens.elementAt(_currentIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(

          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Filmes'),
            BottomNavigationBarItem(icon: Icon(Icons.today), label: 'Lançamentos'),
          ],
          currentIndex: _currentIndex,
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            updateIndex(index);
          },
        ),
       );
  }
}