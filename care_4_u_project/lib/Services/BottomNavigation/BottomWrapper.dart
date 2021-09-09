import 'package:care_4_u_project/Screens/CoronaStatus/CoronaStatusPage.dart';
import 'package:care_4_u_project/Screens/Home/HomeView.dart';
import 'package:care_4_u_project/Screens/UserDetails/UserDetails.dart';
import 'package:care_4_u_project/Screens/WorkoutScreens/WorkoutScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigationWrapper extends StatefulWidget {
  @override
  _BottomNavigationWrapperState createState() =>
      _BottomNavigationWrapperState();
}

class _BottomNavigationWrapperState extends State<BottomNavigationWrapper> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      // backgroundColor: Colors.white, // Default is Colors.white.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.

      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(30.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      // itemAnimationProperties: ItemAnimationProperties(
      //   // Navigation Bar's items animation properties.
      //   duration: Duration(milliseconds: 300),
      //   curve: Curves.easeInOut,
      // ),
      // screenTransitionAnimation: ScreenTransitionAnimation(
      //   // Screen transition animation on change of selected tab.
      //   animateTabTransition: true,
      //   curve: Curves.easeInOut,
      //   duration: Duration(milliseconds: 300),
      // ),
      navBarStyle:
          NavBarStyle.style6, // Choose the nav bar style with this property.
    );
  }

  List<Widget> _buildScreens() {
    return [
      HomeView(),
      CoronaStatusPage(),
      WorkoutScreen(),
      UserDetails(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Home"),
        activeColorPrimary: CupertinoColors.systemPurple,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(FontAwesomeIcons.virus),
        title: ("Covid-19 Statistics"),
        activeColorPrimary: Colors.redAccent,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(FontAwesomeIcons.dumbbell),
        title: ("Workouts"),
        activeColorPrimary: CupertinoColors.systemGreen,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person),
        title: ("User"),
        activeColorPrimary: Color(0xff1d617A),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }
}
