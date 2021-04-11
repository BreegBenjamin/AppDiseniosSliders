import 'package:flutter/material.dart';

class CubeExercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF235D85),
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _createCube(0XFF56B5F6),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _createCube(0XFF, isTransparent: true),
                  _createCube(0XFFE9F00D),
                ],
              ),
              _createCube(0XFFDF1C57),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createCube(int colorHx, {bool isTransparent = false}) {
    final intColor = (isTransparent) ? 0xFF : 0xFFFFFFFF;
    return Container(
      decoration: BoxDecoration(
        color: Color(colorHx),
        border: Border.all(width: 7.0, color: Color(intColor)),
      ),
      height: 105,
      width: 105,
    );
  }
}
