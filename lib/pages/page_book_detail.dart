import 'package:flutter/material.dart';
import '../bean/bean.dart';

class BookDetail extends StatelessWidget{

  final Book book;
  BookDetail({Key key, @required this.book}):super(key : key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: ()=>Navigator.pop(context)),
        title: Text('${book.name}'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Text(
                  '名称${book.name}'
              ),
              Image.network('${book.iconPath}'),
              Text('作者：${book.author}'),
              Text('内容简介：${book.msg}')
            ],
          ),
        ),
      ),
    );
  }
}