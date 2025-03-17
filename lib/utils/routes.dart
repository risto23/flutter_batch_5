import 'package:flutter/material.dart';
import 'package:flutter_batch_5/pages/day5/home_screen.dart';
import 'package:flutter_batch_5/pages/day5/setting_screen.dart';
import 'package:flutter_batch_5/pages/day5/tab_screen.dart';

class AppRoute {

  static  String home = '/home';
  static  String settingScreen = '/setting-screen';
  static String bottomNavBar = '/bottom-nav-bar_screen';
  static String tab = '/tab-screen';

  
}

final routes = {
        AppRoute.home : (context) => HomeScreen(),
        AppRoute.settingScreen: (context) => SettingScreen(),
        AppRoute.tab: (context) => TabScreen(),
        AppRoute.bottomNavBar: (context) => BottomAppBar(),
};