import 'package:flutter/material.dart';

class GridViewCountScreen extends StatefulWidget {
  const GridViewCountScreen({super.key});

  @override
  State<GridViewCountScreen> createState() => _GridViewCountScreenState();
}

class _GridViewCountScreenState extends State<GridViewCountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Screen"),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(10),
          crossAxisCount: 4, // jumlah item dalam satu baris
          crossAxisSpacing: 8,// pembatas antar item kiri kanan
          mainAxisSpacing: 10,// pembatas antar item atas bawah
          childAspectRatio: 2/2,// rasio antar item
        
         children: [
          Center(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.home), 
            ),
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.purple,
          ), 
          Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.purple,
          ), 
          Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.purple,
          ), 
          Container(
            color: Colors.orange,
          ),
         ]
      ),
    );
  }
}