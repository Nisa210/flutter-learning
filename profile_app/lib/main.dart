import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Profil()));

class Profil extends StatefulWidget {
  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  int uyelikLevel = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile App'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                uyelikLevel++;
              });
            },
            icon: Icon(Icons.keyboard_arrow_up),
          ),
          IconButton(
              icon: Icon(Icons.keyboard_arrow_down),
              onPressed: () {
                setState(() {
                  uyelikLevel--;
                });
              })
        ],
      ),
      backgroundColor: Color.fromARGB(255, 219, 184, 241),
      body: Padding(
        padding: EdgeInsets.fromLTRB(50, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/a.jpg'),
                radius: 50.0,
              ),
            ),
            Divider(
              color: Colors.purple[300],
              height: 90,
            ),
            Text(
              'NAME',
              style: TextStyle(
                  color: Color.fromARGB(255, 47, 46, 46), letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Someone',
              style: TextStyle(
                  color: Colors.pink[500],
                  letterSpacing: 2.0,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'SURNAME',
              style: TextStyle(
                  color: Color.fromARGB(255, 47, 46, 46), letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Lastname'
                  '',
              style: TextStyle(
                  color: Colors.pink[500],
                  letterSpacing: 2.0,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'LEVEL',
              style: TextStyle(
                  color: Color.fromARGB(255, 47, 46, 46), letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '$uyelikLevel',
              style: TextStyle(
                  color: Colors.pink[500],
                  letterSpacing: 2.0,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                SizedBox(width: 15.0),
                Text(
                  'someone@xmail.com',
                  style: TextStyle(
                      color: Colors.limeAccent,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
