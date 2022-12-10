import 'package:flutter/material.dart';
import 'atasozler.dart';
import 'atasozuTemplate.dart';

void main() => runApp(MaterialApp(
      home: AtasozleriWidget(),
    ));

class AtasozleriWidget extends StatefulWidget {
  @override
  State<AtasozleriWidget> createState() => _AtasozleriWidgetState();
}

class _AtasozleriWidgetState extends State<AtasozleriWidget> {
  List<Atasozler> atasozleri = [
    Atasozler(soz: 'Damlaya Damlaya Göl Olur', ekleyen: 'Ali'),
    Atasozler(soz: 'Sakla Samanı Gelir Zamanı', ekleyen: 'Osman'),
    Atasozler(
        soz: 'Elden Gelen Öğün Olmaz, Olsa da Vaktinde Bulunmaz',
        ekleyen: 'Esra'),
    Atasozler(soz: 'Yalancının Mumu Yatsıya Kadar Yanar', ekleyen: 'Öykü'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF20bf6b),
      appBar: AppBar(
        title: Text('Atasozleri App'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
          children: atasozleri
              .map((s) => atasozuCard(s, () {
                    setState(() {
                      atasozleri.remove(s);
                    });
                  }))
              .toList()),
    );
  }
}
