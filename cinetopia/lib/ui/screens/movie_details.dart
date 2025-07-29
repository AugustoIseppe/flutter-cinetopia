import 'package:cinetopia/app/models/movies.dart';
import 'package:flutter/material.dart';

class MovieDetails extends StatelessWidget {

  final Movies movie;

  const MovieDetails({ super.key, required this.movie });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
        backgroundColor: Color(0xFF1D0E44),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
          ),
         body: SingleChildScrollView(
           child: Center(
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal:28.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                  Icon(
                    Icons.movie_outlined,
                    size: 100,
                    color: Colors.white,
                  ),
                  Text(movie.title, style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Container(
                    height: 300,
                    width: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://image.tmdb.org/t/p/w500${movie.imageUrl}',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                   SizedBox(height: 20),
                   Text('Descrição', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                   SizedBox(height: 10),
                   Text('Rating: ${movie.overview}', style: TextStyle(color: Colors.yellow[700], fontWeight: FontWeight.bold), textAlign: TextAlign.justify),
                 ],
               ),
             ),
           ),
         ),
       );
   }
}