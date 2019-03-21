import 'package:flutter/material.dart';
class ClassItem{
  final String title;
  final String price;
  final String content;
  final String time;
  final Color color;
  final String path;
  ClassItem({this.title, this.price, this.content, this.time, this.color,this.path});
  @override
  String toString()=>"{title:$title,price:$price,content:$content,time:$time}";
}
class MineItem{
  final String icon;
  final String title;
  final String rightText;
  MineItem({this.icon,this.title,this.rightText});
}