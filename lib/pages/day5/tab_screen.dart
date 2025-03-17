import 'package:flutter/material.dart';
import 'package:flutter_batch_5/pages/day5/home_screen.dart';
import 'package:flutter_batch_5/pages/day5/profile_screen.dart';
import 'package:flutter_batch_5/pages/day5/setting_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Screen"),
          bottom: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.home),
               text: "Tab 1",
            ),
            Tab(
              icon: Icon(Icons.person),
               text: "Tab 2",
               ),
            Tab(
              icon: Icon(Icons.settings),
               text: "Tab 3",
            ),
          ]
        ),
        ),
        
        body: TabBarView(
              children: [
                Center(
                  child: Text("Tab 1"),
                ),
                Center(
                  child: Text("Tab 2"),
                ),
                Center(
                  child: Text("Tab 3"),
                ),
              ]
            )
      ),
    );
  }
}