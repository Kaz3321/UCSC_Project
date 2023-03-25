import 'package:flutter/material.dart';

List<String> tempMovies1 = ["Avatar: The Way of Water", "Shazam! Fury Of The Gods", "Ant-Man and the Wasp: Quantumania", "John Wick: Chapter 4", "Scream VI"];
List<String> tempMovies2 = ["Shazam! Fury Of The Gods", "Ant-Man and the Wasp: Quantumania", "John Wick: Chapter 4", "65"];
List<String> tempMovies3 = ["Avatar: The Way of Water", "Shazam! Fury Of The Gods", "Ant-Man and the Wasp: Quantumania", "Puss In Boots: The Last Wish",];

final theatres = [
  Theatre(
      id: 1,
      name: "AMC Eastridge 15",
      address: "2190 Eastridge Loop, San Jose, CA 95122",
      movies: tempMovies1),
  Theatre(
      id: 2,
      name: "AMC Saratoga 14",
      address: "700 El Paseo de Saratoga, San Jose, CA 95130",
       movies: tempMovies2),
      
  Theatre(
      id: 3,
      name: "AMC Mercado 20",
      address: "3111 Mission College Blvd, Santa Clara, CA 95054",
      movies: tempMovies3),
];

class Theatre {
  final int id;
  final String name;
  final String address;
  List<String> movies;

  Theatre({
    required this.id,
    required this.name,
    required this.address,
    required this.movies,
    
  });

  List<String> getMoives() {
    return movies;
  }

  addMovie(String movie) {
    movies.add(movie);
  }

  addMovies (List<String> movies) {
    movies.addAll(movies);
  }
}
