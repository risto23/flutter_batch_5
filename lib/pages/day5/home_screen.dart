import 'package:flutter/material.dart';
import 'package:flutter_batch_5/const/data.dart';
import 'package:flutter_batch_5/pages/day5/profile_screen.dart';
import 'package:flutter_batch_5/utils/extensions/context_extension.dart';
import 'package:flutter_batch_5/utils/routes.dart';
import 'package:flutter_batch_5/widgets/menu_grid_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var name = footballPlayers[0]["name"] as String;

  void onClick(String menu) async {
    switch (menu) {
      case "Home":
        final result = await Navigator.pushNamed(
          context,
          AppRoute.tab,
          arguments: name,
        );
        
        break;
      case "Profile":
        final result = await context.push<String>(ProfileScreen(
          name: name
        )); 
        if(result != null)
        {
          setState(() {
            name = result;
          });
        }
      break;
      case "Settings":
       final result = await Navigator.pushNamed(
        context, 
        AppRoute.settingScreen,
        arguments: name
       );
       if (result != null) {
          setState(() {
            name = result as String;
          });
        }
      break;
      
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello ${name}")),
      body: ListView(children: [MenuGridWidget(
        onClick: onClick,
      )]),
    );
  }
}
