import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/book_screen.dart';
import 'screens/trips_screen.dart';
import 'screens/wishlist_screen.dart';
import 'screens/account_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          MainNavigation(), // The main navigation widget with the bottom nav bar
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0; // Tracks the index of the current selected tab

  // List of pages for each tab
  final List<Widget> _pages = [
    HomeScreen(),
    BookScreen(),
    TripsScreen(),
    WishlistScreen(),
    AccountScreen(),
  ];

  // Updates the current index when a tab is tapped
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Displays the selected page
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange, // Selected tab color
        unselectedItemColor: Colors.grey, // Unselected tab color
        currentIndex: _currentIndex, // Sets the active tab
        onTap: _onTabTapped, // Handles tab taps
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Book',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: 'Trips',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
