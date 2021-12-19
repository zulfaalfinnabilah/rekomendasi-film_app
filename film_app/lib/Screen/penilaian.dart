import 'package:flutter/material.dart';

class Penilaian extends StatefulWidget {
  const Penilaian({Key key}) : super(key: key);

  @override
  _PenilaianState createState() => _PenilaianState();
}

class _PenilaianState extends State<Penilaian> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('Penilaian'),
      ),
      body: Container(
        color: Color(0xFFB2EBF2),
        child: ListView(
          children: <Widget>[
            Container(
                child: Divider(
              color: Colors.black,
              height: 36,
            )),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.bottomLeft, // and bottomLeft
                  child: SafeArea(
                    child: Text(
                      'Nama',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Masukkan nama',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            SizedBox(height: 30),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.bottomLeft, // and bottomLeft
                  child: SafeArea(
                    child: Text(
                      'Komentar',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                    labelText: 'Masukkan nama',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            SizedBox(height: 30),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 60, right: 60),
                          child: Text(
                            'Hapus',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 60, right: 60),
                          child: Text(
                            'Kirim',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
