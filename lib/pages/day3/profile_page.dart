import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  var index = 0;

  List<String> randomNames = [
    "Andi",
    "Budi",
    "Ciko",
    "Diki",
    "Evan",
    "Fandi",
  ];
  late String name ;

  void changeName() {
    var panjangList = randomNames.length;
    if(index < panjangList-1)
    {
      index++;
    }
    else
    {
      index = 0;
    }
    setState(() {
      name = randomNames[index];
    });
  }
  
  @override
  void initState() {
    // TODO: implement initState
    name = randomNames[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => changeName(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 16,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/logo.png"),
              ),
              Container(
                color: Colors.amber[200],
                child: Image.asset(
                  "assets/logo.png",
                  width: 100,
                ),
              ),
              Text(
                name,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Colors.orange[900],
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}