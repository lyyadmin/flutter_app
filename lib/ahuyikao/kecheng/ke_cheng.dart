import 'package:flutter/material.dart';
import '../../ahuyikao/template/icon_text.dart';
import '../../ahuyikao/template/list_item_widget.dart';

class KeCheng extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text(
          '网校课程'
        ),
        actions: <Widget>[
          IconTextWidget(
            icon: Image.asset('images/doctor_exam_down_video_normal.png'),
            text: '下载',
          ),
          IconTextWidget(
            icon: Image.asset('images/doctor_exam_add_video_normal.png'),
            text: '我的课程',
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Image.asset('images/kecheng.png'),
          ),
          ListItemWidget(),
          ListItemWidget(),
          ListItemWidget(),
          ListItemWidget(),
        ],
      ) ,
    );
  }
}