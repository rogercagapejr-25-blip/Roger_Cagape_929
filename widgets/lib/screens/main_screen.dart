import 'package:flutter/material.dart';
import 'package:widgets/screens/friends_screen.dart';
import 'package:widgets/screens/newsfeed_screen.dart';
import 'package:widgets/screens/notification_screen.dart';
import 'package:widgets/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPage = 0;

  // Remove const if your screens are not all const constructors
  final List<Widget> pages = [
    const NewsfeedScreen(),
    const FriendsScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        currentIndex: currentPage,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.new_label),
            label: "NewsFeed",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Friends",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
            label: "Notification",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}