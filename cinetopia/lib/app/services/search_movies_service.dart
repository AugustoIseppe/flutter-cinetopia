import 'package:cinetopia/app/models/movies.dart';

abstract class SearchMoviesService {
  Future<List<Movies>> getMovies();
}
