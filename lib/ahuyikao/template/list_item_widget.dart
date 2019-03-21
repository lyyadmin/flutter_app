import 'package:flutter/material.dart';

class ListItemWidget extends StatefulWidget{
  @override
  _ListItemWidgetState createState()=>_ListItemWidgetState();
}

class _ListItemWidgetState extends State<ListItemWidget>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Color(0xfff2f2f2),width: 5.0))
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 100,
              child: Image.asset('images/banner04.png',fit: BoxFit.cover,),
              margin: EdgeInsets.all(5.0),
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text('2019中医职业医师（含助理）资格考试金考点攻略（99元课）',maxLines: 2,),
                    padding: EdgeInsets.all(8.0),
                    margin: EdgeInsets.only(bottom: 6),
                  ),
                  Row(
                    children: <Widget>[
                      Image.asset('images/doctor_exam_courceadd_image.png',scale: 2.6,),
                      Text('97376人'),
                      Container(
                        width: 10,
                      ),
                      Image.asset('images/doctor_exam_lessonnum_image.png',scale: 2.0,),
                      Text('140小时'),
                      Align(
                        widthFactor: 1.2,
                        alignment: Alignment.bottomRight,
                        child: Container(
                          alignment: Alignment.center,
                          width: 60,
                          height: 22,
                          child: Text('已完结',style: TextStyle(color:Colors.red ),),
                          decoration: BoxDecoration(border: Border.all(color: Colors.red,width: 1.5),borderRadius: BorderRadius.all(Radius.circular(5.0))),
                          margin: EdgeInsets.only(left: 10,top: 5),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            flex: 2,
          )
        ],
      ),
    );
  }
}