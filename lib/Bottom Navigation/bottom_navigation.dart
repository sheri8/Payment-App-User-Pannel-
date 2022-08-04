import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_app_userpanel/Utils/colors.dart';

import '../Utils/global_variables.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  int _page = 0;
  late PageController pageController;

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: homeScreenItems,
        controller: pageController,
        onPageChanged: onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CupertinoTabBar(
        onTap: navigationTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 22, color: _page == 0 ? bg : grey),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 22,
              color: _page == 1 ? bg : grey,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.lock,
              size: 22,
              color: _page == 2 ? bg : grey,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_outlined,
              size: 22,
              color: _page == 3 ? bg : grey,
            ),
          ),
        ],
      ),
    );
  }
}
