import 'package:antivirus_3/features/home/screens/category_screen.dart';
import 'package:antivirus_3/features/home/screens/first_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> screens = const [
    FirstPage(),
    CategoryScreen(),
    CategoryScreen(),
  ];
  int page = 0;
  onTap(int index) {
    setState(() {
      page = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[page],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: page,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: 'Categories'),
            BottomNavigationBarItem(
                icon: Icon(Icons.cleaning_services), label: 'Clean'),
          ]),
    );
  }
}
