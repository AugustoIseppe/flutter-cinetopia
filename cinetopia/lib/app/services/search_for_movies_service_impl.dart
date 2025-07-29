import 'dart:convert';

import 'package:cinetopia/app/helpers/consts.dart';
import 'package:cinetopia/app/models/movies.dart';
import 'package:cinetopia/app/services/search_movies_service.dart';
import 'package:http/http.dart' as http;

class SearchForMoviesServiceImpl implements SearchMoviesService {
  List<Movies> movies = [];
  final String query;

  SearchForMoviesServiceImpl({required this.query});

  @override
  Future<List<Movies>> getMovies() async {
    try {
      final response = await http.get(
        Uri.parse(moviePrefixUrl + query + movieFilterSufix),
        headers: requestHeaders,
      );

      if (response.statusCode == 200) {
        for (dynamic movie in json.decode(response.body)['results']) {
          movies.add(Movies.fromMap(movie));
        }
        print('Response Body: ${response.body}');
        print('Search results for "$query": ${movies.length} movies found.');
        for (var movie in movies) {
          print('Movie: ${movie.title}, Release Date: ${movie.releaseDate}');
        }
        return movies;
      } else {
        throw Exception(response.body);
      }
    } catch (e) {
      rethrow;
    }
  }
}
