import 'package:flutter/material.dart';

class MyBottomAppBar extends StatefulWidget{
  _MyBottomAppBar createState()=>_MyBottomAppBar();
}

class _MyBottomAppBar extends State<MyBottomAppBar>{

  int currentIndex;
  Color _tabColor;

  @override
  void initState() {
    currentIndex = 0;
    _tabColor = Colors.white;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }


  BottomAppBar getWidgets(){
    return BottomAppBar(
      color: Colors.lightBlue,
      shape: CircularNotchedRectangle(),
      child: tabs(),
    );
  }

  Row tabs() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        new Container(
          child: IconButton(
            icon: Icon(Icons.near_me),
            color: _tabColor,
            onPressed: () {
              setState(() {
                _tabColor = Colors.orangeAccent;
                currentIndex = 0;
              });
            },
          ),
        ),
        IconButton(
          icon: Icon(Icons.edit_location),
          color: Colors.white,
          onPressed: () {
            setState(() {
              _tabColor = Colors.white;
              currentIndex = 1;
            });
          },
        ),
      ],
    );
  }
}