import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../config/httpHeaders.dart';

class HomePage extends StatefulWidget{
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  TextEditingController typeController = TextEditingController();
  String showText = '欢迎你来到美好人间';
  String dataText = '请求数据';
  @override
  void initState() {
    getDefaultHttp().then((val){
      setState(() {
        showText = val['data']['name'].toString();
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('美好人间'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 1000,
          child: Column(
            children: <Widget>[
              TextField(
                controller: typeController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    labelText: '美女类型',
                    helperText: '请输入你喜欢的类型'
                ),
                autofocus: false,
              ),
              RaisedButton(
                onPressed: _choiceAction,
                child: Text('选择完毕'),
              ),
              Text(
                showText,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              RaisedButton(
                onPressed: _jike,
                  child: Text('请求数据'),
              ),
              Text(dataText)
            ],
          ),
        ),
      )
    );
  }

  void _choiceAction(){
    print('开始选择你喜欢的类型');
    if(typeController.text.toString()==''){
      showDialog(
        context: context,
        builder: (context) => AlertDialog(title: Text('美女类型不能为空'),)
      );
    }else{
      getHttp(typeController.text.toString()).then((val){
        setState(() {
          showText = val['data']['name'].toString();
        });
      });
    }
  }

  Future getHttp(String typeText)async{
    try{
      Response response;
      var data = {'name':typeText};
      response = await Dio().post(
        'https://www.easy-mock.com/mock/5c60131a4bed3a6342711498/baixing/dabaojian',
        queryParameters: data
      );
      return response.data;
    }catch(e){
      print(e);
    }
  }

  Future getDefaultHttp()async{
    try{
      Response response;
      var date = {'name': '技术群'};
      response = await Dio().get(
        'https://www.easy-mock.com/mock/5c60131a4bed3a6342711498/baixing/dabaojian?name=大胸美女',
      );
      print(response);
      return response.data;
    }catch(e){
      return print(e);
    }
  }

  void _jike(){
    print('开始极客可时间请求数据.........................');
    getData().then((val){
      setState(() {
        dataText = val['data'].toString();
      });
    });
  }
  
  Future getData() async{
    try{
      Response response;
      var data = {};
      Dio dio = new Dio();
      dio.options.headers = httpHeaders;
      response = await dio.get(
        'https://time.geekbang.org/serv/v1/column/newAll'
      );
      print(response);
      return response.data;
    }catch(e){
      print(e);
    }
  }
}