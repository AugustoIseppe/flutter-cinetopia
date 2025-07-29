import 'package:cinetopia/app/viewmodels/search_movies_viewmodel.dart';
import 'package:cinetopia/ui/components/movie_card.dart';
import 'package:flutter/material.dart';

class Releases extends StatelessWidget {
  final SearchMoviesViewModel searchMoviesViewModel = SearchMoviesViewModel();

  Releases({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: searchMoviesViewModel.searchUpcomingMovies(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Erro ao carregar lançamentos: ${snapshot.error}'),
          );
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('Nenhum lançamento encontrado.'));
        }

        return CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Center(
                child: Image.asset("assets/movie.png", height: 80, width: 80),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Text(
                  "Lançamentos",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: MovieCard(
                    movie: searchMoviesViewModel.moviesList[index],
                  ),
                ),
                childCount: searchMoviesViewModel.moviesList.length,
              ),
            ),
          ],
        );
      },
    );
  }
}
