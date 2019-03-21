import 'package:flutter/material.dart';
import '../widget/banner_widget.dart';
import '../../ahuyikao/bean.dart';
import '../../ahuyikao/datas.dart';
import '../../ahuyikao/template/list_item_widget.dart';

class ShouYe extends StatelessWidget{
  String notiStr = '恭喜辽宁考生150****4032成功报班';
  String jvliStr = '距离考试176天';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      appBar: AppBar(
//        title: Text('首页'),
//      ),
      body: SingleChildScrollView(
        child:  Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                getBannerView(),
                getNotifiCation(),
                getMenuWidget(),
                getZhiboWidget(),
                getRexiaoWidget(context),
                getClassType(context),
                getAdpanxWidget(context),
                getMoreGoodClass(context)
              ],
            )
        ),
      ),
    );
  }

  BannerView getBannerView(){
    List<String> paths = List<String>();
    paths.add('images/banner00.png');
    paths.add('images/banner01.png');
    paths.add('images/banner02.png');
    paths.add('images/banner03.png');
    paths.add('images/banner04.png');
    paths.add('images/banner05.png');
    List<BannerViewItem> items = List<BannerViewItem>.generate(paths.length, (index){
      return BannerViewItem(isNet: false, path: paths[index]);
    });
    return BannerView(items: items,height: 166.0,currentIndex: 0,);
  }

  Widget getNotifiCation(){
    return Container(
      height: 40.0,
      child: Row(
        mainAxisAlignment:MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Container(child: Image.asset('images/icon_trumpet.png',fit: BoxFit.cover,),width: 14.0,height: 14.0,margin: EdgeInsets.only(left: 2.0),),
                Container(
                  child: Text(notiStr,overflow: TextOverflow.ellipsis,),
                    margin: EdgeInsets.only(left: 1.0)
                )
              ],
            ),
            flex: 2,
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Container(child:Image.asset('images/icon_alarm_clock.png',fit: BoxFit.cover,),width: 19.0,height: 14.0,margin: EdgeInsets.only(left: 2.0),
                decoration: BoxDecoration(
                  border: Border(left: BorderSide(
                    color: Colors.grey,
                    width: 1.0
                  ))
                ),
                padding: EdgeInsets.only(left: 5.0),),
                Container(
                  child: Text(jvliStr,overflow: TextOverflow.ellipsis,),
                    margin: EdgeInsets.only(left: 1.0)
                )
              ],
            ),
            flex: 1,
          )
        ],
      ),
    );
  }

  Widget getMenuWidget(){
    List<Image> images = List<Image>();
    images.add(Image.asset('images/ic_live_course.png'));
    images.add(Image.asset('images/ic_school_course.png'));
    images.add(Image.asset('images/icon_activity_center.png'));
    images.add(Image.asset('images/ic_free_classes.png'));
    images.add(Image.asset('images/ic_ahu_tiku.png'));
    images.add(Image.asset('images/ic_all_question.png'));
    images.add(Image.asset('images/ahuxueshu_paper_examing.png'));
    images.add(Image.asset('images/ic_graph_ques.png'));
    List<String> titles = List<String>();
    titles.add('直播大厅');
    titles.add('网校课程');
    titles.add('活动中心');
    titles.add('免费试听');
    titles.add('VIP题库');
    titles.add('历年真题');
    titles.add('押题密卷');
    titles.add('拍照搜题');
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: List<Widget>.generate(images.length~/2, (index){
              return Expanded(
                child: GestureDetector(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 60,
                        height: 60,
                        child: images[index],
                        margin: EdgeInsets.all(5),
                      ),
                      Container(
                        child: Text(titles[index],overflow: TextOverflow.ellipsis,),
                        padding: EdgeInsets.only(top: 8.0),
                      )
                    ],
                  ),
                  onTap: (){
                    print(titles[index]);
                  },
                ),
                flex: 1,
              );
            }),
          ),
          Row(
            children: List<Widget>.generate(images.length~/2, (index){
              return Expanded(
                child: GestureDetector(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 60,
                        height: 60,
                        child: images[index+4],
                        margin: EdgeInsets.all(5),
                      ),
                      Container(
                        child: Text(titles[index+4],overflow: TextOverflow.ellipsis,),
                        padding: EdgeInsets.only(top: 8.0),
                      )
                    ],
                  ),
                  onTap: (){
                    print(titles[index+4]);
                  },
                ),
              );
            }),
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        border: Border(top: BorderSide(color: Color(0xfff2f2f2),width: 1.0))
      ),
      padding: EdgeInsets.only(bottom: 5),
    );
  }

  Widget getZhiboWidget(){
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Color(0xfff2f2f2),
            width: 5.0
          )
        ),
        color: Colors.white
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width:22,
                      child: Image.asset('images/icon_live.png',fit: BoxFit.cover,),
                      margin: EdgeInsets.only(left: 5),
                    ),
                    Container(
                      child: Text('19:30',style: TextStyle(fontSize: 20),),
                      margin: EdgeInsets.only(left: 5),
                    )
                  ],
                ),
                Container(
                  width: 78,
                  child: Image.asset('images/icon_live_today.png',fit: BoxFit.cover,),
                  margin: EdgeInsets.only(top: 6),
                )
              ],
            ),
            flex: 2,
          ),
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text('课程：基础精讲课',style: TextStyle(fontSize: 20),),
              ),
              Container(
                child: Text('课时：诊断学基础（2）',style: TextStyle(fontSize: 16),),
                margin: EdgeInsets.only(top: 10),
              )
            ],
          ),flex: 4,),
          Expanded(child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 160.0,
              height: 33.0,
              child: Center(child: Text('进入直播',style: TextStyle(color: Colors.white),),),
              decoration: BoxDecoration(
                color: Color(0xfffc4547),
                borderRadius: BorderRadius.all(Radius.circular(20.0))
              ),
              margin: EdgeInsets.only(top: 30.0,bottom: 30.0,right: 5.0),
            ),
          ),flex: 2,)
        ],
      ),
    );
  }

  Widget getRexiaoWidget(context){
    return Container(
      height: 166,
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
                    color: Color(0xfff2f2f2),
                    width: 5.0
                ),
              bottom: BorderSide(color: Color(0xfff2f2f2),width: 10)
            ),
        ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
//                mainAxisAlignment: MainAxisAlignment.start,
//                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Image.asset('images/banner00.png',fit: BoxFit.cover,),
                      decoration: BoxDecoration(color: Colors.brown,),
//                      margin: EdgeInsets.only(left: 0),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Image.asset('images/banner01.png',fit: BoxFit.cover),
//                      margin: EdgeInsets.only(top: 5),
                      decoration: BoxDecoration(color: Colors.yellow),
                      margin: EdgeInsets.only(top: 5.0),
                    ),
                    flex: 1,
                  )
                ],
              ),
//              decoration: BoxDecoration(color: Colors.deepPurpleAccent,border: Border.all(color: Colors.deepPurpleAccent,width: 2)),
            ),
            flex: 3,
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset('images/banner02.png',fit: BoxFit.fill),
//              margin: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(color: Colors.blue),
              margin: EdgeInsets.only(left: 10.0),
            ),
            flex: 2,
          )
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

  Container ImgContainer(String path,BuildContext context){
    return  Container(
      width: MediaQuery.of(context).size.width,
      height: 120.0,
      child: Image.asset(path,fit: BoxFit.cover,),
      margin: EdgeInsets.all(5.0),
    );
  }

  Widget getAdpanxWidget(context){
    return Container(
      child: Column(
        children: <Widget>[
         ImgContainer('images/banner00.png',context),
         ImgContainer('images/banner01.png',context),
         ImgContainer('images/banner02.png',context)
        ],
      ),
    );
  }

  Widget getMoreGoodClass(context){
    return Container(
      child: Column(
        children: <Widget>[
          ListItemWidget(),
          ListItemWidget(),
          ListItemWidget(),
          ListItemWidget(),
          ListItemWidget(),
          ListItemWidget(),
          ListItemWidget(),
          ListItemWidget(),
          ListItemWidget(),
        ],
      ),
    );
  }
}