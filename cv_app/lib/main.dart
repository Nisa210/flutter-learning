import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calibri',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Times New Roman',
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 18),
        ),
      ),
      home: MyHomePage(title: 'MY CV'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _name = 'Someone';
  String _email = 'someone@example.com';
  String _phone = '123-456-7890';
  String _imageUrl = 'https://via.placeholder.com/150';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Image.network(_imageUrl, width: 150, height: 150),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(_name, style: Theme.of(context).textTheme.headline1),
                    Text(_email),
                    Text(_phone),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.school),
                  title: Text('Education'),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    // Navigate to education page
                  },
                ),
                ListTile(
                  leading: Icon(Icons.work),
                  title: Text('Work Experience'),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    // Navigate to work experience page
                  },
                ),
                ListTile(
                  leading: Icon(Icons.code),
                  title: Text('Skills'),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    // Navigate to skills page
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
