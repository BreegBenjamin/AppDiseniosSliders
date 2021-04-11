import 'package:flutter/material.dart';

class PageBackground extends StatelessWidget {
  const PageBackground({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _createBackgorundColor(),
        _createBackgroundImage(),
        _createText(),
      ],
    );
  }

  Widget _createBackgorundColor() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _createBackgroundImage() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _createText() {
    final styles = TextStyle(color: Colors.white, fontSize: 35.0);
    String currentDay = '${DateTime.now().day} °';
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            Text(_getDay(), style: styles),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(currentDay, style: styles),
                SizedBox(width: 10.0),
                Icon(Icons.wb_sunny, color: Colors.white, size: 30.0),
              ],
            ),
            Expanded(child: SizedBox()),
            Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 75.0),
          ],
        ),
      ),
    );
  }

  String _getDay() {
    int day = DateTime.now().weekday;
    switch (day) {
      case 1:
        return "Lunes";
      case 2:
        return "Martes";
      case 3:
        return "Miércoles";
      case 4:
        return "Jueves";
      case 5:
        return "Viernes";
      case 6:
        return "Sábado";
      case 7:
      default:
        return "Domingo";
    }
  }
}
