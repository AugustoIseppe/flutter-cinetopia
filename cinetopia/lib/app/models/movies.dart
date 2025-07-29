import 'dart:convert';

import 'package:cinetopia/app/helpers/consts.dart';

class Movies {
  final int id;
  final String title;
  final String imageUrl;
  final String releaseDate;
  final String overview;
  Movies({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.releaseDate,
    required this.overview,
  });

 String getPosterImage() {
  if (imageUrl.isEmpty) {
    return 'https://via.placeholder.com/300x450?text=Sem+Imagem';
  }
  return imageBaseUrlPrefix + imageUrl;
}


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'imageUrl': imageUrl,
      'releaseDate': releaseDate,
      'overview': overview,
    };
  }

factory Movies.fromMap(Map<String, dynamic> map) {
  return Movies(
    id: map['id'] ?? 0,
    title: map['title'] ?? 'Sem título',
    imageUrl: map['poster_path'] ?? '', // importante: evitar null
    releaseDate: map['release_date'] ?? 'Data desconhecida',
    overview: map['overview'] ?? 'Sem descrição',
  );
}



  String toJson() => json.encode(toMap());

  factory Movies.fromJson(String source) => Movies.fromMap(json.decode(source) as Map<String, dynamic>);
}
