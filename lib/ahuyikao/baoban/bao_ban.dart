import 'package:flutter/material.dart';
import '../../ahuyikao/datas.dart';
import '../../ahuyikao/bean.dart';

class BaoBan extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('网络签约报班'),
        actions: <Widget>[
          Center(
            child: Container(
              child: Text('我的报班',style: TextStyle(fontSize: 16.0),),
              margin: EdgeInsets.only(right: 15),
            ),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          getClassType(context)
        ],
      ),
    );
  }

  Widget getClassType(context){
    List<ClassItem> sitems = DataUtil.getClassItemsData();
    List<Widget> items = List<Widget>();
    for(int i=0;i<sitems.length;i++){
      if(sitems[i].path==null){
        items.add(Container(
          height: 188,
          decoration: BoxDecoration(color: Colors.white),
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 5.0,bottom: 5.0),
          child: Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(border: Border.all(color: sitems[i].color,width: 2.0)),
                margin: EdgeInsets.all(12.0),
                padding: EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(sitems[i].price,style: TextStyle(fontSize: 16.0,height: 1.2),),
                    Text(sitems[i].content,style: TextStyle(fontSize: 16.0,height: 1.2),maxLines: 2,),
                    Text(sitems[i].time,style: TextStyle(fontSize: 16.0,height: 1.2),),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(sitems[i].title,style: TextStyle(color: sitems[i].color,fontSize: 24.0),),
                      decoration: BoxDecoration(color: Color(0xffffffff)),
                      padding: EdgeInsets.only(left: 10.0),
                    ),
                    Container(
                      child:  Text('班',style: TextStyle(color: Colors.black,fontSize: 24.0),),
                      decoration: BoxDecoration(color: Color(0xffffffff)),
                      padding: EdgeInsets.only(right: 10.0),
                    )
                  ],
                ),
              ),
              Container(
                height: 188,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    alignment: Alignment.center,
                    width: 50,
                    height: 50,
                    child: Center(
                      child: Text('立即报班',style: TextStyle(color: Colors.white,fontSize: 14),maxLines: 2,),
                    ),
                    decoration: BoxDecoration(color: Color(0xfffc2427),borderRadius: BorderRadius.all(Radius.circular(44.0))),
                    margin: EdgeInsets.all(15.0),
                    padding: EdgeInsets.only(left:11.0),
                  ),
                ),
              )
            ],
          ),
        ));
      }else{
        items.add(Container(
          height: 188,
          decoration: BoxDecoration(color: Colors.white),
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 5.0,bottom: 5.0),
          child: Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(border: Border.all(color: sitems[i].color,width: 2.0)),
                margin: EdgeInsets.all(12.0),
                padding: EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(sitems[i].price,style: TextStyle(fontSize: 16.0,height: 1.2),),
                    Text(sitems[i].content,style: TextStyle(fontSize: 16.0,height: 1.2),maxLines: 2,),
                    Text(sitems[i].time,style: TextStyle(fontSize: 16.0,height: 1.2),),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(sitems[i].title,style: TextStyle(color: sitems[i].color,fontSize: 24.0),),
                      decoration: BoxDecoration(color: Color(0xffffffff)),
                      padding: EdgeInsets.only(left: 10.0),
                    ),
                    Container(
                      child:  Text('班',style: TextStyle(color: Colors.black,fontSize: 24.0),),
                      decoration: BoxDecoration(color: Color(0xffffffff)),
                      padding: EdgeInsets.only(right: 10.0),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 80,
                  child: Image.asset(sitems[i].path,fit: BoxFit.cover,),
                  padding: EdgeInsets.all(10.0),
                ),
              ),
              Container(
                height: 188,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    alignment: Alignment.center,
                    width: 50,
                    height: 50,
                    child: Center(
                      child: Text('立即报班',style: TextStyle(color: Colors.white,fontSize: 14),maxLines: 2,),
                    ),
                    decoration: BoxDecoration(color: Color(0xfffc2427),borderRadius: BorderRadius.all(Radius.circular(44.0))),
                    margin: EdgeInsets.all(15.0),
                    padding: EdgeInsets.only(left:11.0),
                  ),
                ),
              )
            ],
          ),
        ));
      }
    }
    return Container(
      child: Column(
        children: items,
      ),
    );
  }
}