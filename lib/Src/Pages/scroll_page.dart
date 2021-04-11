import 'package:flutter/cupertino.dart';
import 'package:slider_app/Src/Widgets/page_background.dart';
import 'package:slider_app/Src/Widgets/page_details.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoPageScaffold(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: [
            PageBackground(),
            PageDetails(),
          ],
        ),
      ),
    );
  }
}
