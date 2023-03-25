import 'package:flutter/material.dart';
import 'package:project/pages/states/moviesPageState.dart';

import 'theatre.dart';

class MoviesPage extends StatefulWidget {
  final Theatre selectedTheatre;
  const MoviesPage({super.key, required this.title, required this.selectedTheatre});


  final String title;
  

  @override
  State<MoviesPage> createState() => MoviesPageState();
}


