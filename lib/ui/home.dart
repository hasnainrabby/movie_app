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
            return movieCard(movieList[index], context);
       /* return Card(
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
        );*/
      }),
    );
  }

  Widget movieCard(Movie movie,BuildContext context){
 return InkWell(
   child: Container(
     width: MediaQuery.of(context).size.width,          //for all type of device
     height: 120.0,
     child: Card(
       color: Colors.black12,
       child: Padding(
         padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,left: 54.0,right: 8.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(movie.title),
                 Text("Rating: ${movie.imdbRating} /10")
               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Text("Released: ${movie.released}"),
                 Text(movie.language),
                 Text(movie.runtime),

               ],
             ),

           ],
         ),
       ),
     ),
   ),
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

