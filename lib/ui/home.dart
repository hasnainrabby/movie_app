import 'package:flutter/material.dart';
import 'package:movie_app/model/movie.dart';


class movieListview extends StatelessWidget {

  final List<Movie> movieList = Movie.getMovies();

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
          itemCount: movieList.length,
          itemBuilder: (BuildContext context,int index) {
        return Card(
          elevation: 50,
          shadowColor: Colors.red,
              color: Colors.lightGreen,
          child: ListTile(
            leading: CircleAvatar(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(13.9),
                  image: DecorationImage(
                      image: NetworkImage(movieList[index].images[0]),
                          fit: BoxFit.cover

                  )
                ),
                child: null,
              ),
            ),
            title: Text(movieList[index].title,style: TextStyle(color: Colors.white),),
            subtitle: Text("${movieList[index].director}",style: TextStyle(color: Colors.grey)),
            trailing: Text("..."),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> MovieListViewDetails(movieName: movieList[index].title,
              movie: movieList[index],))),
          ),
        );
      }),
    );
  }
}

class MovieListViewDetails extends StatelessWidget {

  final String movieName;
  final Movie movie;


  const MovieListViewDetails({super.key, required this.movieName, required this.movie});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
          centerTitle: true,
          backgroundColor: Colors.grey.shade900,
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
              onPressed: ()=>{
               Navigator.pop(context)
          },
              child: Text("Back ${this.movie.language}"))
        ),
      ),
      
    );
  }
}

