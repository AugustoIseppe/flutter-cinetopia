import 'package:cinetopia/app/api_key.dart';

const String popularMoviesUrl = 'https://api.themoviedb.org/3/movie/popular?language=en-US&page=1';

const String upcomingUrl = "https://api.themoviedb.org/3/movie/upcoming?language=en-US&region=US&page=1";

const String moviePrefixUrl = 'https://api.themoviedb.org/3/search/movie?query=';

const String movieFilterSufix = '&incluide_adult=false&language=en-US&page=1';

const requestHeaders = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer $apiKey',
};

const String imageBaseUrlPrefix = 'https://image.tmdb.org/t/p/w500/';