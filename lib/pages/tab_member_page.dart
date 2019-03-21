import 'package:flutter/material.dart';

class MemberPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: <Widget>[
          Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountName: Text('wanghao',style: TextStyle(fontWeight: FontWeight.bold),),
                    accountEmail: Text('wanghao@ninghao.cn'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage('https://resources.ninghao.org/images/wanghao.jpg'),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.yellow[400],
                        image: DecorationImage(
                            image: NetworkImage('https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.yellow[400].withOpacity(0.6),
                                BlendMode.hardLight
                            )
                        )
                    ),
                  ),
                  Text('会员中心'),
                ],
              )
          ),
//          Container(
//              child:new GridView.count(
//                crossAxisCount: 2,
//                children: new List.generate(100, (index){
//                  return Center(
//                    child: Text('item $index'),
//                  );
//                }),
//              )
//          )
        ],
      )
    );
  }
}