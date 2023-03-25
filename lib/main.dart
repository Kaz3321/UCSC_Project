import 'package:flutter/material.dart';
import 'package:project/pages/seatsPage.dart';
import 'package:project/pages/theatresPage.dart';

import 'pages/theatre.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: Color(0xffffff),
      ),
      initialRoute: '/theatre',
      routes: {
        '/theatre':((context) => TheatrePage(title: "Theatre Page")),
        '/seats':((context) => SeatsPage(title: "Seats Page")),

        
      },

    
    );
  }
}