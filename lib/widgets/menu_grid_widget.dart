import 'package:flutter/material.dart';

final menus = [
    {
      "menu": "Home",
      "icon": Icon(Icons.home),
    },
    {
      "menu": "Search",
      "icon": Icon(Icons.search),
    },
    {
      "menu": "Settings",
      "icon": Icon(Icons.settings),
    },
    {
      "menu": "Profile",
      "icon": Icon(Icons.person),
    },
    {
      "menu": "Notif",
      "icon": Icon(Icons.notifications),
    },
    {
      "menu": "Messages",
      "icon": Icon(Icons.message),
    },
    {
      "menu": "Favorites",
      "icon": Icon(Icons.favorite),
    },
    {
      "menu": "Help",
      "icon": Icon(Icons.help),
    },
    {
      "menu": "Info",
      "icon": Icon(Icons.info),
    },
    {
      "menu": "Logout",
      "icon": Icon(Icons.logout),
    },
    {
      "menu": "Flutter",
      "icon": Image.asset(
        "assets/logo.png",
      ),
    },
  ];


class MenuGridWidget extends StatelessWidget {

  final Function(String menu)? onClick;

  const MenuGridWidget({
    super.key,
    this.onClick,
    });
  

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, // jumlah item dalam satu baris
          crossAxisSpacing: 8,// pembatas antar item kiri kanan
          mainAxisSpacing: 10,// pembatas antar item atas bawah
          // childAspectRatio: 2/2,// rasio antar item
        ),
        itemCount: menus.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () =>  onClick?.call(menus[index]['menu'] as String),
          child: Card(
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
                SizedBox(
                  height: 40,
                  width: 40,
                  child: menus[index]['icon'] as Widget,
                ),
                Text(menus[index]['menu'] as String),
              ],
            ),
          ),
        )
      );
  }
}