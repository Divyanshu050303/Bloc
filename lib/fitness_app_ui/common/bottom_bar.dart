import 'package:flutter/material.dart';
import 'package:tap/fitness_app_ui/feature/analyst/screen/statistics.dart';
import 'package:tap/fitness_app_ui/feature/home/screen/home_screen.dart';

import 'package:tap/trading_app_ui/common/constant.dart';

class FitnessBottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const FitnessBottomBar({super.key});

  @override
  State<FitnessBottomBar> createState() => _FitnessBottomBarState();
}

class _FitnessBottomBarState extends State<FitnessBottomBar> {
  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;

  List<Widget> pages = [
    const FitnessHomeScreen(),
    Container(),
    const Statistics(),
    Container(),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _page,
        selectedItemColor: Constant.selectedNavBarColor,
        unselectedItemColor: Constant.unselectedNavBarColor,
        backgroundColor: Constant.backgroundColor,
        iconSize: 28,
        onTap: updatePage,
        type: BottomNavigationBarType.fixed,
        items: [
          // HOME
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 0
                        ? Constant.selectedNavBarColor
                        : Constant.backgroundColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Icon(
                Icons.home_outlined,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 1
                        ? Constant.selectedNavBarColor
                        : Constant.backgroundColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Icon(
                Icons.calendar_month_outlined,
              ),
            ),
            label: '',
          ),
          // ACCOUNT
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 2
                        ? Constant.selectedNavBarColor
                        : Constant.backgroundColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Icon(
                Icons.analytics_outlined,
              ),
            ),
            label: '',
          ),
          // CART

          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 3
                        ? Constant.selectedNavBarColor
                        : Constant.backgroundColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Icon(
                Icons.notifications_outlined,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
