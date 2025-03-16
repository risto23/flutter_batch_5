import 'package:flutter/material.dart';

class ListviewBuilderScreen extends StatefulWidget {
  const ListviewBuilderScreen({super.key});

  @override
  State<ListviewBuilderScreen> createState() => _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState extends State<ListviewBuilderScreen> {

   final footballPlayer = [
    {
      "name": "Cristiano Ronaldo",
      "club": "Al Nassr",
      "country": "Portugal",
    },
    {
      "name": "Lionel Messi",
      "club": "Paris Saint-Germain",
      "country": "Argentina",
    },
    {
      "name": "Neymar Jr",
      "club": "Paris Saint-Germain",
      "country": "Brazil",
    },
    {
      "name": "Kylian Mbappe",
      "club": "Paris Saint-Germain",
      "country": "France",
    },
    {
      "name": "Kevin De Bruyne",
      "club": "Manchester City",
      "country": "Belgium",
    },
    {
      "name": "Robert Lewandowski",
      "club": "Barcelona",
      "country": "Poland",
    },
    {
      "name": "Virgil van Dijk",
      "club": "Liverpool",
      "country": "Netherlands",
    },
    {
      "name": "Mohamed Salah",
      "club": "Liverpool",
      "country": "Egypt",
    },
    {
      "name": "Sadio Mane",
      "club": "Bayern Munich",
      "country": "Senegal",
    },
    {
      "name": "Harry Kane",
      "club": "Tottenham Hotspur",
      "country": "England",
    },
    {
      "name": "Sergio Ramos",
      "club": "Paris Saint-Germain",
      "country": "Spain",
    },
    {
      "name": "Luka Modric",
      "club": "Real Madrid",
      "country": "Croatia",
    },
    {
      "name": "Eden Hazard",
      "club": "Real Madrid",
      "country": "Belgium",
    },
    {
      "name": "Karim Benzema",
      "club": "Real Madrid",
      "country": "France",
    },
    {
      "name": "Paul Pogba",
      "club": "Juventus",
      "country": "France",
    },
    {
      "name": "Gareth Bale",
      "club": "Los Angeles FC",
      "country": "Wales",
    },
    {
      "name": "Zlatan Ibrahimovic",
      "club": "AC Milan",
      "country": "Sweden",
    },
    {
      "name": "Romelu Lukaku",
      "club": "Inter Milan",
      "country": "Belgium",
    },
    {
      "name": "Erling Haaland",
      "club": "Manchester City",
      "country": "Norway",
    },
    {
      "name": "Antoine Griezmann",
      "club": "Atletico Madrid",
      "country": "France",
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Builder"),
      ),
      body: ListView.builder(
        itemCount: footballPlayer.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(
                footballPlayer[index]["name"]![0],
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            title: Text("${index+1} - ${footballPlayer[index]["name"]!}"),
            subtitle: Text("${footballPlayer[index]["club"]!} - ${footballPlayer[index]["country"]!}"),
            );
        },
      ),
    );
  }
}