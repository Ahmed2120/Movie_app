import 'package:flutter/material.dart';
import 'movie.dart';

class MovieDetail extends StatelessWidget {
  const MovieDetail(this.movie);

  final Movie movie;
  final String imagePath = 'https://image.tmdb.org/t/p/w500/';

  @override
  Widget build(BuildContext context) {

    String path = imagePath + movie.posterPath;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  height: height / 1.5,
                  child: Image.network(path),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Text(movie.overview, style: TextStyle(fontSize: 17, ),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
