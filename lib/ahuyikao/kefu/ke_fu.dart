import 'package:flutter/material.dart';

class KeFu extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('阿虎客服'),
      ),
      body: Center(
        child: Text('客服'),
      ),
    );
  }
}