import 'package:flutter/material.dart';
import 'main_page.dart';

class Welcome extends StatelessWidget{
  
  PageController _pageController = PageController();
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: _pageController,
      onPageChanged: (value){
        print(value);
      },
      children: getImageWidget(context),
    );
  }
  
  List<Widget> getImageWidget(context){
    return List<Widget>.generate(4, (index){
      String imgPath = 'images/guide${index+1}.png';
      print(imgPath);
      if(index==3){
        return GestureDetector(
          child: Container(
            child: Image.asset(imgPath,fit: BoxFit.cover,),
            decoration: BoxDecoration(color: Colors.white),
          ),
          onTap: (){
            try{
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>MainPageWidget()), (route)=>route == null);
            }catch(e){
              print(e);
            }
          },
        );
      }else{
        return Image.asset(imgPath,fit: BoxFit.cover,);
      }
    });
  }
}