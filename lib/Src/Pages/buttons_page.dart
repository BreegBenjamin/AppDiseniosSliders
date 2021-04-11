import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Stack(
      children: [
        _botomApp(),
        SingleChildScrollView(
          child: Column(
            children: [
              _textDetails(),
              _circleButton(),
            ],
          ),
        ),
      ],
    ));
  }

  Widget _botomApp() {
    final gradient = Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ])),
    );
    final boxRouse = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 300.0,
        width: 290.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromRGBO(236, 98, 188, 1.0),
            Color.fromRGBO(241, 142, 172, 1.0),
          ]),
          borderRadius: BorderRadius.circular(80.0),
        ),
      ),
    );
    return Stack(
      children: [
        gradient,
        Positioned(
          top: -70,
          child: boxRouse,
        ),
      ],
    );
  }

  Widget _textDetails() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Classify Transaction',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Text(
                  'Classify this transaction into the particular category',
                  style: TextStyle(color: Colors.white, fontSize: 18.0)),
            )
          ],
        ),
      ),
    );
  }

  Widget _circleButton() {
    return Table(
      children: [
        TableRow(children: [
          _createButtonCircle(Colors.blue[600], Icons.loyalty, 'Pet Shop'),
          _createButtonCircle(Colors.black, Icons.lock_clock, 'Segurity'),
        ]),
        TableRow(children: [
          _createButtonCircle(Colors.red[600], Icons.palette, 'Art And Desing'),
          _createButtonCircle(Colors.cyan, Icons.filter_sharp, 'Image Galery'),
        ]),
        TableRow(children: [
          _createButtonCircle(
              Colors.yellow[200], Icons.sanitizer, 'Hand washing'),
          _createButtonCircle(Colors.greenAccent[600],
              Icons.app_settings_alt_outlined, 'App Config'),
        ]),
        TableRow(children: [
          _createButtonCircle(Colors.green, Icons.location_city, 'City'),
          _createButtonCircle(
              Colors.pink[400], Icons.store_mall_directory_sharp, 'Shoop'),
        ])
      ],
    );
  }

  Widget _createButtonCircle(Color color, IconData icon, String text) {
    return Container(
      height: 180.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(icon, size: 30.0),
            radius: 30.0,
          ),
          Text(text, style: TextStyle(fontSize: 15.0, color: color)),
          SizedBox(height: 5.0),
        ],
      ),
    );
  }
}
