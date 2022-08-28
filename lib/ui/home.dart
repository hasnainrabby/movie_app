import 'package:flutter/material.dart';

class movieListview extends StatelessWidget {

  final List movies = [
    "Avatar",
    "Titanic",
    "SpiderMan Home Coming",
    "Thor",
    "The Avengers",
    "Doctor Strange",
    "Minions",
    "Despicable Me",
    "Despicable Me 2",
    "Despicable Me 3",
    "Ice age",
    "Ice age 2",
    "Ice age 3",
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        centerTitle: true,
        backgroundColor: Colors.grey.shade900,
      ),
      backgroundColor: Colors.blueGrey.shade400,
      body:
      ListView.builder(
          itemCount: movies.length,
          itemBuilder: (BuildContext context,int index) {
        return Card(
          elevation: 50,
          shadowColor: Colors.red,
              color: Colors.lightGreen,
          child: ListTile(
            title: Text(movies[index],style: TextStyle(color: Colors.white),),
          ),
        );
      }),
    );
  }
}
