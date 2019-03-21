import 'package:flutter/material.dart';
import 'dart:async';
import 'welcome.dart';

class SplashWidget extends StatefulWidget{
  @override
  _SplashWidget createState() =>_SplashWidget();
}

class _SplashWidget extends State<SplashWidget>{

  Timer _timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _timer = Timer(Duration(milliseconds: 2500), (){
      try{
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Welcome()), (route)=>route == null);
      }catch(e){
        print(e);
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Image.asset('images/icon_splash_yinyongbao.png',fit: BoxFit.cover,);
  }
}