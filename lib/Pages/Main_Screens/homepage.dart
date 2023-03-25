import 'package:biscuit2/Component/navigation_button.dart';
import 'package:biscuit2/Pages/Main_Screens/feed_screen.dart';
import 'package:biscuit2/Pages/Main_Screens/profile.dart';
import 'package:flutter/material.dart';
import 'Search.dart';
import 'camera_screen.dart';
import 'home.dart';
import 'inbox.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // bottom nav bar
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    UserHomePage(),
    const UserSearchPage(),
    FeedScreen(),
    UserInboxPage(),
    UserProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      //backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        color: Colors.black45,
        notchMargin: 5,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      _navigateBottomBar(0);
                    },
                    child: NavigationButton(
                      iconData: Icons.home_outlined,
                      label: 'Home',
                      selected: _selectedIndex == 0,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      _navigateBottomBar(1);
                    },
                    child: NavigationButton(
                      iconData: Icons.search,
                      label: 'Discover',
                      selected: _selectedIndex == 1,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.home,
                  size: 38,
                  color: Colors.transparent,
                ),
                const Text(
                  "Create",
                )
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      _navigateBottomBar(3);
                    },
                    child: NavigationButton(
                      iconData: Icons.notifications_none_outlined,
                      label: 'Notification',
                      selected: _selectedIndex == 3,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      _navigateBottomBar(4);
                    },
                    child: NavigationButton(
                      iconData: Icons.account_circle_outlined,
                      label: 'Profile',
                      selected: _selectedIndex == 4,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(_selectedIndex==2){
            Navigator.push (
              context,
              MaterialPageRoute (
                builder: (BuildContext context) =>  CameraScreen(),
              ),
            );
          }else{
            _navigateBottomBar(2);
          }


        },
        backgroundColor: Colors.orange[700],
        elevation: 0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
/**
 *  currentIndex: _selectedIndex,
        
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.abc,color: Colors.transparent,),label: 'Create'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_rounded), label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
 */