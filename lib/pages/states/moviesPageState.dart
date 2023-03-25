import 'package:flutter/material.dart';
import '../moviesPage.dart';
import '../theatre.dart';

class MoviesPageState extends State<MoviesPage> {
  late Theatre theatre;
  @override
  void initState() {
    super.initState();
    theatre = widget.selectedTheatre;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: theatre.movies.isEmpty
          ? Container(
              child: Center(
                  child: Text("No Entries", style: TextStyle(fontSize: 50))))
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Theatre : ${theatre.name}",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
                ListView.builder(
                  itemBuilder: ((context, index) => row(index)),
                  itemCount: theatre.movies.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                ),
              ],
            ),
    );
  }

  ListTile row(index) {
    return ListTile(
      title: Text(
        theatre.movies[index],
        style: TextStyle(color: Colors.white),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Colors.white,
      ),
      onTap: (() => {
            setState((() {
              Navigator.pushNamed(context, '/seats');
            })),
      }),
    );
  }
}
