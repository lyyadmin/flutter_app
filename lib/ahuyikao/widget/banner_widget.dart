import 'package:flutter/material.dart';
import 'dart:async';

class BannerView extends StatefulWidget{

  final List<BannerViewItem> items;
  final double height;
  int currentIndex = 0;
  PageController _pageController = PageController();

  BannerView({
    Key key,
    @required this.items,
    @required this.height,
    this.currentIndex
}):super(key : key);

  @override
  _BannerView createState() => _BannerView();
}

class _BannerView extends State<BannerView>{

  Timer _timer;
  double indicatorSize = 8.0;

  @override
  void initState() {
    _timer = Timer.periodic(Duration(milliseconds: 3000), (timer){
      widget.currentIndex+=1;
      if(widget.currentIndex>=widget.items.length){
        widget.currentIndex = 0;
      }
      widget._pageController.animateToPage(widget.currentIndex, duration: Duration(milliseconds: 800), curve: Curves.easeOut);
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return getContent();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Widget getContent(){
    return Container(
      height: widget.height,
      decoration: BoxDecoration(color: Color(0xffff0000)),
      child: Stack(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: widget.height,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: widget._pageController,
              children: _getChildren(),
              onPageChanged: (index){
                setState(() {
                  widget.currentIndex = index;
                });
              },
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: _getDotView(),
            ),
            padding: EdgeInsets.all(5.0)
          ),
        ],
      ),
    );
  }

  List<Widget> _getChildren(){
    return List<Widget>.generate(widget.items.length, (index){
      BannerViewItem viewItem = widget.items[index];
      bool isNet = viewItem.isNet;
      Image img;
      if(isNet){
        img = Image.network(viewItem.path,fit: BoxFit.cover,scale: 10.0,);
      }else{
        img = Image.asset(viewItem.path,fit: BoxFit.cover,scale: 10.0,);
      }
      return img;
    });
  }

  List<Widget> _getDotView(){
    return List<Widget>.generate(widget.items.length, (index){
//      String path = '';
//      if(index==widget.currentIndex){
//        path = 'images/guide_dot_focused.png';
//      }else{
//        path = 'images/guide_dot_normal.png';
//      }
//      return Container(
//        child: Image.asset(path),
//        padding: EdgeInsets.all(3.0),
//      );
      return new Container(
          width: indicatorSize,
          height: indicatorSize,
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            color: index==widget.currentIndex ? Colors.white : Colors.white.withOpacity(0.5),
          ),
          margin: EdgeInsets.all(2.5),
      );
    });
  }
}

class BannerViewItem{
  final bool isNet;
  final String path;
  BannerViewItem({Key key,@required this.isNet,@required this.path}):super();
}