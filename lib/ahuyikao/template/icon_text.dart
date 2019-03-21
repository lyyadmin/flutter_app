import 'package:flutter/material.dart';

class IconTextWidget extends StatelessWidget{

  final Image icon;
  final String text;

  IconTextWidget({
    Key key,
    this.text,
    this.icon
}):assert(icon!=null),
  assert(text!=null);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Container(
            height: 22,
            child:icon,
            margin: EdgeInsets.only(bottom: 3),
          ),
          Text(text)
        ],
      ),
      padding: EdgeInsets.all(6),
    );
  }
}