import 'package:flutter/material.dart';
import 'package:flutter_batch_5/pages/home_page.dart';
import 'package:flutter_batch_5/pages/layout_page.dart';
import 'package:flutter_batch_5/pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: LayoutPage(),
    );
  }
}
