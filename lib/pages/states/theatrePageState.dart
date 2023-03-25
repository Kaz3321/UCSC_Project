import 'package:flutter/material.dart';
import '../theatresPage.dart';
import '../theatre.dart';
import '../moviesPage.dart';

class TheatrePageState extends State<TheatrePage> {
  late Theatre selectedTheatre;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0x000000),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: theatres.isEmpty
          ? Container(
              child: Center(
                  child: Text("No Entries", style: TextStyle(fontSize: 50))))
          : ListView.builder(
              itemBuilder: ((context, index) => row(index)),
              itemCount: theatres.length,
            ),
    );
  }

  ListTile row(index) {
    return ListTile(
      title: Text(
        theatres[index].name,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        theatres[index].address,
        style: TextStyle(color: Color(0xffb3b3b3)),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Colors.white,
      ),
      onTap: (() => {
            setState((() {
              Navigator.push(context, MaterialPageRoute(builder: ((context) => MoviesPage(title: "Movies Page", selectedTheatre: theatres[index],))));
            }))
          }),
    );
  }
}
