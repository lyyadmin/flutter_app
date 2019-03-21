import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../pages/tab_home_page.dart';
import '../pages/tab_cart_page.dart';
import '../pages/tab_category_page.dart';
import '../pages/tab_member_page.dart';


final List tabBodys = [
  HomePage(),
  CategoryPage(),
  CartPage(),
  MemberPage()
];

final List<BottomNavigationBarItem> bottomTabs = [
  BottomNavigationBarItem(
    icon:Icon(CupertinoIcons.home),
    title: Text('首页')
  ),
  BottomNavigationBarItem(
    icon: Icon(CupertinoIcons.search),
    title: Text('分类')
  ),
  BottomNavigationBarItem(
    icon: Icon(CupertinoIcons.shopping_cart),
    title: Text('购物车')
  ),
  BottomNavigationBarItem(
    icon: Icon(CupertinoIcons.profile_circled),
    title: Text('会员中心')
  )
];

class MainPage extends StatefulWidget{
  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage>{

  int currentIndex = 0;
  var currentPage;
  @override
  void initState() {
    currentPage = tabBodys[currentIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomTabs,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        fixedColor: Colors.blue,
        onTap: (index){
          setState((){
            currentIndex = index;
            currentPage = tabBodys[currentIndex];
          });
        },
      ),
      body: currentPage,
    );;
  }
}