import 'package:flutter/material.dart';
import 'package:flutter_batch_5/pages/day3/home_page.dart';
import 'package:flutter_batch_5/pages/day3/layout_page.dart';
import 'package:flutter_batch_5/pages/day3/profile_page.dart';
import 'package:flutter_batch_5/pages/day4/expanded_screen.dart';
import 'package:flutter_batch_5/pages/day4/gridview_builder_screen.dart';
import 'package:flutter_batch_5/pages/day4/gridview_count_screen.dart';
import 'package:flutter_batch_5/pages/day4/gridview_screen.dart';
import 'package:flutter_batch_5/pages/day4/listview_builder_screen.dart';
import 'package:flutter_batch_5/pages/day4/listview_screen.dart';
import 'package:flutter_batch_5/pages/day4/listview_separated_screen.dart';
import 'package:flutter_batch_5/pages/day5/home_screen.dart';
import 'package:flutter_batch_5/pages/day5/setting_screen.dart';
import 'package:flutter_batch_5/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.blue[300],
          indicatorColor: Colors.white,
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red,
        ),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.red[300],
          indicatorColor: Colors.white,
        ),
      ),
      routes: routes,
      initialRoute: AppRoute.home,
    );
  }
}
