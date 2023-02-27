import 'package:flutter/material.dart';
import 'package:project_9/screens/post/allposts.dart';
import 'package:project_9/screens/profile/profile.dart';
import 'package:provider/provider.dart';

import '../../screens/consultant/consultant_screen.dart';
import '../../screens/home/home.dart';
import '../../screens/jobs/jobs_screen.dart';
import '../../screens/post/newpost.dart';
import '../theem/colours.dart';
import 'BottomNavProvider.dart';

class BottomNavBar extends StatelessWidget {
  //const BottomNavBar({Key? key}) : super(key: key);

  List<dynamic> screens = [
    Home(),
    JobsScreen(),
    AllPosts(),
    ConsultantScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final screenindexprovider = Provider.of<BottomNavProvider>(context);
    int currentScreenIndex = screenindexprovider.currentScreenIndex;

    return Scaffold(
      backgroundColor: navBarColor,
      body: screens[currentScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        currentIndex: currentScreenIndex,
        selectedFontSize: 14,
        selectedIconTheme: IconThemeData(color: navBarSelectedIconColor, size: 40),
        selectedItemColor: navBarSelectedIconColor,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedIconTheme: IconThemeData(
          color: navBarUSelectedIconColor,
        ),
        unselectedItemColor:navBarUSelectedIconColor,
        onTap: (value) => screenindexprovider.updateScreenIndex(value),
        items: [
          BottomNavigationBarItem(
            label: 'home',
            icon: Icon((currentScreenIndex == 0)
                ? Icons.home
                : Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Jobs',
            icon: Icon((currentScreenIndex == 1)
                ? Icons.cases_rounded
                : Icons.cases_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Post',
            icon: Icon((currentScreenIndex == 2)
                ? Icons.post_add
                : Icons.post_add_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Consultant',
            icon: Icon((currentScreenIndex == 3)
                ? Icons.data_thresholding
                : Icons.data_thresholding_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon((currentScreenIndex == 5)
                ? Icons.account_circle
                : Icons.account_circle_outlined),
          ),
        ],
      ),
    );
  }
}
