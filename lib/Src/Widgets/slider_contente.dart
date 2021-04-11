import 'dart:math';

import 'package:flutter/material.dart';

class SliderBar extends StatefulWidget {
  @override
  _SliderBarState createState() => _SliderBarState();
}

class _SliderBarState extends State<SliderBar> {
  List<int> _numbers = [];
  @override
  void initState() {
    super.initState();
    _sendImages();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext contex, int index) {
          return _createWidgets(index);
        },
        itemCount: _numbers.length,
      ),
    );
  }

  Widget _createWidgets(int index) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: [
            ClipOval(
              child: Image(
                image: NetworkImage(
                    'https://picsum.photos/id/${_numbers[index]}/250/200'),
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: _createCircle(),
            )),
          ],
        ),
      ),
    );
  }

  void _sendImages() {
    final ran = new Random();
    for (var i = 1; i < 11; i++) {
      _numbers.add(ran.nextInt(120));
    }
  }

  Widget _createCircle() {
    final random = new Random();
    return ClipOval(
      child: Container(
        height: 20,
        width: 20,
        color: Color((random.nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
      ),
    );
  }
}
