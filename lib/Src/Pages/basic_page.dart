import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  const BasicPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _createImage(),
            _createDescriptionImage(),
            _createActions(),
            _createDescriptionPhoto(),
            _createDescriptionPhoto(),
          ],
        ),
      ),
    );
  }

  Widget _createImage() {
    return Container(
      width: double.infinity,
      height: 280.0,
      child: Image(
          fit: BoxFit.fill,
          image: NetworkImage(
              "https://images.unsplash.com/photo-1485081669829-bacb8c7bb1f3?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80")),
    );
  }

  Widget _createDescriptionImage() {
    final styleFirst = TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0);
    final styleSecond = TextStyle(color: Colors.black54, fontSize: 17.0);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hallstatt Austria', style: styleFirst),
                SizedBox(height: 10.0),
                Text('Situated between the southwestern', style: styleSecond)
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Color(0XFFE82020),
            size: 30.0,
          ),
          Text('41')
        ],
      ),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _createElement(Icons.map, 'Location'),
        _createElement(Icons.near_me, 'Route'),
        _createElement(Icons.share, 'share'),
      ],
    );
  }

  Widget _createDescriptionPhoto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 17.0),
      child: Text(
          'Some 1,300 burials have been found, including around 2,000 individuals, with women and children but few infants.Nor is there a "princely" burial, as often found near large settlements. Instead, there are a large number of burials varying considerably in the number and richness of the grave goods, but with a high proportion containing goods suggesting a life well above subsistence level. \n \n The community at Hallstatt exploited the salt mines in the area, which had been worked from time to time since the Neolithic period, from the 8th to 5th centuries BC. The style and decoration of the grave goods found in the cemetery are very distinctive, and artifacts made in this style are widespread in Europe. In the mine workings themselves'),
    );
  }

  Widget _createElement(IconData icon, String text) {
    return Column(
      children: [
        Icon(icon, size: 35.0, color: Colors.blue),
        SizedBox(height: 10.0),
        Text(text.toUpperCase(),
            style: TextStyle(fontSize: 15.0, color: Colors.blue))
      ],
    );
  }
}
