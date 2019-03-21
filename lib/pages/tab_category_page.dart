import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text('分类'),
//              leading: IconButton(icon: Icon(Icons.menu), onPressed: ()=>debugPrint('menu press'),tooltip: 'menu',),
              elevation: 0.0,
              actions: <Widget>[
                IconButton(icon: Icon(Icons.search), onPressed: ()=>debugPrint('search press'),tooltip: 'search',)
              ],
              bottom: TabBar(
                unselectedLabelColor: Colors.black38,
                indicatorColor: Colors.black54,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 1.0,
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.local_florist)),
                  Tab(icon: Icon(Icons.change_history)),
                  Tab(icon: Icon(Icons.directions_bike))
                ],
              ),
            ),
          body: TabBarView(
            children: <Widget>[
              Icon(Icons.local_florist,size: 128.0,color: Colors.black12,),
              Icon(Icons.change_history,size: 128.0,color: Colors.black12,),
              Icon(Icons.directions_bike,size: 128.0,color: Colors.black12,)
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
//                DrawerHeader(
//                  child: Text('heard'.toUpperCase()),
//                  decoration: BoxDecoration(
//                    color: Colors.grey[100]
//                  ),
//                ),
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
                ListTile(
                  title: Text('Message',textAlign: TextAlign.right,),
                  trailing: Icon(Icons.message,color: Colors.black12,size: 22.0,),
                  onTap: ()=>Navigator.pop(context),
                ),
                ListTile(
                  title: Text('Favorite',textAlign: TextAlign.right,),
                  trailing: Icon(Icons.favorite,color: Colors.black12,size: 22.0,),
                  onTap: ()=>Navigator.pop(context),
                ),
                ListTile(
                  title: Text('Settings',textAlign: TextAlign.right,),
                  trailing: Icon(Icons.settings,color: Colors.black12,size: 22.0,),
                  onTap: ()=>Navigator.pop(context),
                )
              ],
            ),
          ),
        )
    );
  }
}