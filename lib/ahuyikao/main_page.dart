import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'kecheng/ke_cheng.dart';
import 'kefu/ke_fu.dart';
import 'shouye/shou_ye.dart';
import 'wode/wo_de.dart';
import 'baoban/bao_ban.dart';
import 'widget/my_floating_action_button_location.dart';

class MainPageWidget extends StatefulWidget{
  _MainPageWidget createState() => _MainPageWidget();
}

class _MainPageWidget extends State<MainPageWidget>{

  final int baobanIndex = 2;
  final double iconScale = 2.0;
  int currentIndex = 0;
  Color _tabColor = Colors.white;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: getBottomNavigationBar(),
      body: _getBodyWidget(),

      floatingActionButton: GestureDetector(
        child: Container(
          width: 66.0,
          height: 66.0,
          child: Image.asset('images/icon_zero_to_class.png',fit: BoxFit.cover,),
        ),
        onTap: (){
          setState(() {
            currentIndex = baobanIndex;
          });
        },
      ),
      floatingActionButtonLocation: MyFloatingActionButtonLocation(),
    );
  }


  BottomNavigationBar getBottomNavigationBar(){

  return BottomNavigationBar(
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: Image.asset('images/ic_home_normal.png',scale: iconScale,),
          activeIcon: Image.asset('images/ic_home_focused.png',scale: iconScale,),
          title: Text("首页")
      ),
      BottomNavigationBarItem(
          icon: Image.asset('images/ic_course_normal.png',scale: iconScale,),
          activeIcon: Image.asset('images/ic_course_focuse.png',scale: iconScale,),
          title: Text("课程")
      ),
      BottomNavigationBarItem(
          icon: Image.asset('images/activite_choosed_null.png',scale: 20.0,),
          title: Text(""),
          backgroundColor: Colors.red
      ),
      BottomNavigationBarItem(
          icon: Image.asset('images/ic_customer_service_normal.png',scale: iconScale,),
          activeIcon: Image.asset('images/ic_customer_service_focuse.png',scale: iconScale,),
          title: Text("客服")
      ),
      BottomNavigationBarItem(
        icon: Image.asset('images/ic_me_normal.png',scale: iconScale,),
        activeIcon: Image.asset('images/ic_me_focuse.png',scale: iconScale,),
        title: Text("我的"),
      ),
    ],
    type: BottomNavigationBarType.fixed,
    fixedColor: Colors.blue,
    currentIndex: currentIndex,
    onTap: (index){
      setState(() {
        currentIndex = index;
      });
    },
    iconSize: 24.0,
  );
  }

  Widget _getBodyWidget(){
    Widget widget;
    switch(currentIndex){
      case 0:
        widget = ShouYe();
        break;
      case 1:
        widget = KeCheng();
        break;
      case 2:
        widget = BaoBan();
        break;
      case 3:
        widget = KeFu();
        break;
      case 4:
        widget = WoDe();
        break;
        default:
          widget = BaoBan();
          break;
    }
    return widget;
  }

}