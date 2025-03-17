import 'package:flutter/material.dart';
import 'package:flutter_batch_5/const/data.dart';

class ListviewBuilderScreen extends StatefulWidget {
  const ListviewBuilderScreen({super.key});

  @override
  State<ListviewBuilderScreen> createState() => _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState extends State<ListviewBuilderScreen> {

   


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Builder"),
      ),
      body: ListView.builder(
        itemCount: footballPlayers.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(
                footballPlayers[index]["name"]![0],
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            title: Text("${index+1} - ${footballPlayers[index]["name"]!}"),
            subtitle: Text("${footballPlayers[index]["club"]!} - ${footballPlayers[index]["country"]!}"),
            );
        },
      ),
    );
  }
}