import 'package:flutter/material.dart';
import 'package:masjid_ribat_academy/utils/my_size.dart';
import 'package:masjid_ribat_academy/views/math.dart';
import 'package:masjid_ribat_academy/views/ready_to_practice.dart';
import 'package:masjid_ribat_academy/views/search_academy.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;

  final screens = [
    SearchAcadmy(),
    ReadyToPratice(),
  ];

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 3),
        height: MySize.scaleFactorHeight * 72,
        decoration: const BoxDecoration(color: Colors.white),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
              elevation: 0,
              backgroundColor: Colors.white,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.blue,
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  height: 1.8,
                  color: Colors.blue),
              unselectedLabelStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
              currentIndex: currentIndex,
              onTap: (a) {
                setState(() {
                  currentIndex = a;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: currentIndex == 0 ? Colors.blue : Colors.grey,
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.bookmark_border_outlined,
                      color: currentIndex == 1 ? Colors.blue : Colors.grey,
                    ),
                    label: "Bookmarks"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
