import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:showapp/pages/home_page.dart';
import 'package:showapp/pages/profile_page.dart';

import '../pages/explore_page.dart';
import '../pages/settings_page.dart';

class NavBar extends StatefulWidget {
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    const ProfilePage(),
    ExplorePage(),
    const SettingsPage(),
  ];

  void _onTabChange(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: MediaQuery.of(context).size.width > 600
          ? _buildNavBarDesktop()
          : _buildNavBarMobile(),
    );
  }

  Widget _buildNavBarMobile() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      color:  const Color.fromARGB(255, 171, 185, 199),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
        child: GNav(
          tabBackgroundColor: Theme.of(context).primaryColor, 
          selectedIndex: _currentIndex,
          onTabChange: (index) {
            _onTabChange(index);
          },
          padding: const EdgeInsets.all(16),
          gap: 8,
          tabs: const [
             GButton(
              icon: Icons.person,
              text: 'Home',
            ),
             GButton(
              icon: Icons.home,
              text: 'Profile',
            ),
             GButton(
              icon: Icons.map,
              text: 'Map',
            ),
             GButton(
              icon: Icons.settings,
              text: 'Settings',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavBarDesktop() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      color: Colors.black,
      child: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Home'),
            onTap: () {
              _onTabChange(0);
            },
            selected: _currentIndex == 0,
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Profile'),
            onTap: () {
              _onTabChange(1);
            },
            selected: _currentIndex == 1,
          ),
          ListTile(
            leading: const Icon(Icons.map),
            title: const Text('Map'),
            onTap: () {
              _onTabChange(2);
            },
            selected: _currentIndex == 2,
          ),
      
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              _onTabChange(3);
            },
            selected: _currentIndex == 3,
          ),
        ],
      ),
    );
  }
}
