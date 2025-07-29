import 'package:cinetopia/app/models/movies.dart';
import 'package:cinetopia/app/services/search_for_movies_service_impl.dart';
import 'package:cinetopia/app/services/search_movies_service.dart';
import 'package:cinetopia/app/services/search_popular_movies_service_impl.dart';
import 'package:cinetopia/app/services/search_upcoming_movies_service_impl.dart';

class SearchMoviesViewModel {
  List<Movies> _moviesList = <Movies>[];

  List<Movies> get moviesList => _moviesList;

  Future<List<Movies>> searchMovies() async {
    final SearchMoviesService searchMoviesService =
        SearchPopularMoviesServiceImpl();
    _moviesList = await searchMoviesService.getMovies();
    return _moviesList;
  }

  Future<List<Movies>> searchForMovie(String query) async {
    if (query.isEmpty) {
      _moviesList = await searchMovies();
    } else {
      final SearchMoviesService searchMoviesService = SearchForMoviesServiceImpl(query: query);
      _moviesList = await searchMoviesService.getMovies();
      print('Search results for "$query": ${_moviesList.length} movies found.');
    }
    return _moviesList;
  }

  Future<List<Movies>> searchUpcomingMovies() async {
    final SearchMoviesService searchMoviesService = SearchUpcomingMoviesServiceImpl();
    _moviesList = await searchMoviesService.getMovies();
    return _moviesList;
  }
}
