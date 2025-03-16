import 'package:flutter/material.dart';

class GridviewScreen extends StatefulWidget {
  const GridviewScreen({super.key});

  @override
  State<GridviewScreen> createState() => _GridviewScreenState();
}

class _GridviewScreenState extends State<GridviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Screen"),
      ),
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, // jumlah item dalam satu baris
          crossAxisSpacing: 8,// pembatas antar item kiri kanan
          mainAxisSpacing: 10,// pembatas antar item atas bawah
          childAspectRatio: 2/2,// rasio antar item
        ),
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