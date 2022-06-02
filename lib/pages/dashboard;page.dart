import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gadget_shop_ui/pages/home.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  List<Widget> pages = [
    Home(),
    Home(),
    Home(),
    Home(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.redAccent,
        elevation: 0,

        currentIndex: _currentIndex,
        selectedItemColor: Color(0xfffe416c),
        selectedLabelStyle: TextStyle(
          fontSize: 13,
        ),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            print(index);
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: SvgPicture.asset(
              "assets/home.svg",
              height: 25,
              width: 25,
            )
          ),
          BottomNavigationBarItem(
            label: "Bag",
            icon: SvgPicture.asset(
              "assets/bag_menu.svg",
              height: 25,
              width: 25,

            )
          ),
          BottomNavigationBarItem(
            label: "Preferences",
            icon: SvgPicture.asset(
              "assets/heart_menu.svg",
              height: 25,
              width: 25,

            )
          ),
          BottomNavigationBarItem(
            label: "Me",
            icon: SvgPicture.asset(
              "assets/person_menu.svg",
              height: 25,
              width: 25,
            )
          ),
        ],
      ),
      body: pages[_currentIndex],
    );
  }

}
