import 'package:film_app/Screen/animasi.dart';
import 'package:film_app/Screen/drama.dart';
import 'package:film_app/Screen/fantasi.dart';
import 'package:film_app/Screen/horor.dart';
import 'package:film_app/Screen/komedi.dart';
import 'package:film_app/Screen/pendidikan.dart';
import 'package:film_app/Screen/petualangan.dart';
import 'package:film_app/Screen/romance.dart';
import 'package:flutter/material.dart';

class Movie extends StatefulWidget {
  const Movie({Key key}) : super(key: key);

  @override
  _MovieState createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text(
          "Recomended Movies",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            // ignore: deprecated_member_use
            child: RaisedButton(
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Fantasi()));
              },
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.movie,
                    color: Color(0xFF29B6F6),
                  ),
                  SizedBox(width: 30),
                  Text('Fantasi')
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            // ignore: deprecated_member_use
            child: RaisedButton(
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pendidikan()));
              },
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.movie,
                    color: Color(0xFF29B6F6),
                  ),
                  SizedBox(width: 30),
                  Text('Pendidikan')
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            // ignore: deprecated_member_use
            child: RaisedButton(
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Drama()));
              },
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.movie,
                    color: Color(0xFF29B6F6),
                  ),
                  SizedBox(width: 30),
                  Text('Drama')
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            // ignore: deprecated_member_use
            child: RaisedButton(
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Romance()));
              },
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.movie,
                    color: Color(0xFF29B6F6),
                  ),
                  SizedBox(width: 30),
                  Text('Romance')
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            // ignore: deprecated_member_use
            child: RaisedButton(
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Animasi()));
              },
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.movie,
                    color: Color(0xFF29B6F6),
                  ),
                  SizedBox(width: 30),
                  Text('Animasi')
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            // ignore: deprecated_member_use
            child: RaisedButton(
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Komedia()));
              },
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.movie,
                    color: Color(0xFF29B6F6),
                  ),
                  SizedBox(width: 30),
                  Text('Komedi')
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            // ignore: deprecated_member_use
            child: RaisedButton(
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Horor()));
              },
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.movie,
                    color: Color(0xFF29B6F6),
                  ),
                  SizedBox(width: 30),
                  Text('Horor')
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            // ignore: deprecated_member_use
            child: RaisedButton(
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Petualangan()));
              },
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.movie,
                    color: Color(0xFF29B6F6),
                  ),
                  SizedBox(width: 30),
                  Text('Petualangan')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
