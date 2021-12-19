import 'package:film_app/Screen/penilaian.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({Key key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('Setting'),
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
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Penilaian(),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.chat,
                    color: Color(0xFF29B6F6),
                  ),
                  SizedBox(width: 30),
                  Text('Penilaian')
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
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.logout,
                    color: Color(0xFF29B6F6),
                  ),
                  SizedBox(width: 30),
                  Text('Logout')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
