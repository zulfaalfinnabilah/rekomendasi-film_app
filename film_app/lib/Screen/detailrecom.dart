import 'package:film_app/model/model1.dart';
import 'package:flutter/material.dart';

class DetaileRecom extends StatelessWidget {
  final CardItem item;
  const DetaileRecom({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text(item.title),
      ),
      body: ListView(
        children: [
          AspectRatio(
            aspectRatio: 4 / 3,
            child: Image.network(
              item.urlImage,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Center(
            child: Text(
              item.title,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              item.desc,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
