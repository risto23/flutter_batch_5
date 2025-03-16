import 'package:flutter/material.dart';
import 'package:flutter_batch_5/widgets/articelCard_widget.dart';

class ListviewScreen extends StatefulWidget {
  const ListviewScreen({super.key});

  @override
  State<ListviewScreen> createState() => _ListviewScreenState();
}

class _ListviewScreenState extends State<ListviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            subtitle: Text("Go to Home Page"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
            subtitle: Text("Open Profile Information"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          SizedBox(
            height: 50,
            child: ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                FilledButton(
                  onPressed: () {},
                  child: Text("Click Me"),
                ),
                FilledButton(
                  onPressed: () {},
                  child: Text("Click Me"),
                ),
                FilledButton(
                  onPressed: () {},
                  child: Text("Click Me"),
                ),
                FilledButton(
                  onPressed: () {},
                  child: Text("Click Me"),
                ),
                FilledButton(
                  onPressed: () {},
                  child: Text("Click Me"),
                ),
              ],
            ),
          ),
          ArticelCardWidget(),
          ArticelCardWidget(),
          ArticelCardWidget(),
          FilledButton(
            onPressed: () {},
            child: Text("Click Me"),
          ),
          ArticelCardWidget(),
          ArticelCardWidget(),
          ArticelCardWidget(),
          ArticelCardWidget(),
          ArticelCardWidget(),
          ArticelCardWidget(),
        ],
        
      ),
    );
  }
}