import 'package:flutter/material.dart';
import 'package:movie/components/genre_card.dart';
import 'package:movie/constants.dart';
import 'package:movie/models/tmdb/tmdb_movie_basic.dart';

class DetailsGenres extends StatelessWidget {
  const DetailsGenres({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final TMDBMovieBasic movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie.genreIds!.length,
          itemBuilder: (context, index) => GenreCard(
            genre: '${movie.genreIds![index]}',
          ),
        ),
      ),
    );
  }
}
