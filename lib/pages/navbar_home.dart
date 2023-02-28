import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mydoctor_app/pages/home_screen.dart';
import 'package:mydoctor_app/pages/setings_screen.dart';

class NavarbarRoute extends StatefulWidget {
  const NavarbarRoute({super.key});

  @override
  State<NavarbarRoute> createState() => _NavarbarRouteState();
}

class _NavarbarRouteState extends State<NavarbarRoute> {
  int _isSelectedIndex = 0;
  final _screens = [
    HomeScreen(),
    Container(),
    Container(),
    SetingsScreens(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_isSelectedIndex],
      bottomNavigationBar: SizedBox(
        height: 120,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xff7165d6),
          unselectedItemColor: Colors.black54,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: _isSelectedIndex,
          onTap: (index) {
            setState(
              () {
                _isSelectedIndex = index;
              },
            );
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.chat_bubble_text_fill,
                ),
                label: 'chat'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: 'Schedule'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Setiings'),
          ],
        ),
      ),
    );
  }
}
