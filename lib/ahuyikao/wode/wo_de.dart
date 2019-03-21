import 'package:flutter/material.dart';
import '../../ahuyikao/bean.dart';

class WoDe extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: Colors.blue
            ),
            child: getPhotoWidget(),
          ),
          getItemTypes(),
          Container(
            height: 60,
            decoration: BoxDecoration(color: Color(0xfff2f2f2)),
            child: Center(
              child: Container(
                width: 200.0,
                height: 30.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff3099cf),width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 20.0,
                      child: Image.asset('images/ic_live_share_weixin.png',fit: BoxFit.cover,),
                      margin: EdgeInsets.only(right: 5.0),
                    ),
                    Text('有问题点击这里咨询客服',style: TextStyle(color: Color(0xff3099cf)),)
                  ],
                )
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget getPhotoWidget(){
    return Stack(
      children: <Widget>[
        Container(
          child: Image.asset('images/me_title_bg.png'),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Image.asset('images/msg_notice_btn_normal.png',fit: BoxFit.cover,scale: 2.0,),
                      padding: EdgeInsets.only(left: 15),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Image.asset('images/settings_btn_normal.png',fit: BoxFit.cover,scale: 2.0,),
                      padding: EdgeInsets.only(right: 15),
                    ),
                    flex: 1,
                  )
                ],
              ),
              Center(
                child:Container(
                  width: 80,
                  height: 80,
                  child: Image.asset('images/ic_physician_practice.png',fit: BoxFit.cover,),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(75.0)),
                  ),
                  padding: EdgeInsets.all(2.0),
                  margin: EdgeInsets.only(top: 15),
                ),
              ),
              Center(
                child:Container(
                  child: Text('昵称',style: TextStyle(color: Colors.white,fontSize: 16),),
                  margin: EdgeInsets.only(top: 15),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget mineMenuItem(MineItem item){
    double icon_size = 20.0;
    return Container(
      height: 55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: icon_size,
            height: icon_size,
            child: Image.asset(item.icon,fit: BoxFit.cover,),
          ),
          Container(
            child: Text(item.title),
            padding: EdgeInsets.only(left: 18.0),
          ),
          Expanded(child: Text(''),flex: 1,),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              child: Text(item.rightText),
            ),
          ),
          Align(
            alignment: FractionalOffset.centerRight,
            child: Container(
              width: icon_size,
              height: icon_size,
              child: Image.asset('images/ic_right_arrows.png',fit: BoxFit.cover),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(
          color: Color(0xffe8eae9),
          width: 1.0
        )),
        color: Color(0xffffffff)
      ),
      padding: EdgeInsets.only(left: 22.0,right: 22.0),
    );
  }

  Widget getItemTypes(){
    List<MineItem> items = List<MineItem>();
    items.add(MineItem(icon:'images/ic_my_exam_type.png',title:'我的考试类别',rightText:'中医执业医师'));
    items.add(MineItem(icon: 'images/coupons_area_image.png',title: '优惠券',rightText: ''));
    items.add(MineItem(icon: 'images/share_friend_label.png',title: '向好友推荐阿虎医考',rightText: ''));
    items.add(MineItem(icon: 'images/review_good_me_image.png',title: '给阿虎个好评',rightText: ''));
    items.add(MineItem(icon: 'images/about_us_label.png',title: '关于我们',rightText: ''));
    items.add(MineItem(icon: 'images/about_us_label.png',title: '常见问题',rightText: ''));
    items.add(MineItem(icon: 'images/about_us_label.png',title: '检查跟新',rightText: ''));
    return Container(
      child: Column(
        children: List<Widget>.generate(items.length, (index){
          return mineMenuItem(items[index]);
        }),
      ),
    );
  }
}