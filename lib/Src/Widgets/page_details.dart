import 'package:flutter/material.dart';
import 'package:slider_app/Src/Widgets/slider_contente.dart';

class PageDetails extends StatelessWidget {
  const PageDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [_createBackgorundColor(), Center()],
    );
  }

  Widget _createBackgorundColor() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: SliderBar(),
      ),
    );
  }
}
