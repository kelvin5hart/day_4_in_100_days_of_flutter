import 'package:day_4_in_100_days_of_flutter/screens/add_screen.dart';
import 'package:day_4_in_100_days_of_flutter/screens/home_screen.dart';
import 'package:day_4_in_100_days_of_flutter/screens/notification_screen.dart';
import 'package:day_4_in_100_days_of_flutter/screens/profile_screen.dart';
import 'package:day_4_in_100_days_of_flutter/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  int _currentPage = 0;
  final List<Widget> _pages = [
    const HomeScreen(),
    const SearchScreen(),
    const AddScreen(),
    const NotificationScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (pageNumber){
          setState(() {
            _currentPage = pageNumber;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentPage,
        selectedIconTheme: const IconThemeData(color: Color(0xFF016FE9), size: 30),
        unselectedIconTheme: const IconThemeData(color: Colors.grey, size: 30),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.circlePlus, size: 45, color: Color(0xFF016FE9),),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.bell),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.idBadge),
            label: "",
          ),
        ],
      ),
    );
  }
}
