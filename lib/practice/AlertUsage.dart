import 'dart:async';

import 'package:flutter/material.dart';
import 'RouterHandler.dart';
import 'package:fluttertoast/fluttertoast.dart';
//
class MyApp10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute:
          onGenerateRoute, //当项目中执行Navigator.pushNamed(context,"/GoodsPageForTestingRouter" ,arguments: "3699");时会调用这个参数对应的函数
      theme: ThemeData(primaryColor: Colors.orange),
      home: AlertUsage(),
    );
  }
}

class AlertUsage extends StatefulWidget {
  AlertUsage({Key key}) : super(key: key);

  _AlertUsageState createState() => _AlertUsageState();
}

class _AlertUsageState extends State<AlertUsage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("hello swiper"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Colors.lightGreen,
                child: Text("style 1"),
                onPressed: () async {
                  print("style 1");
                  var future = await _alertDialog();
                  print(future);
                },
              ),
              RaisedButton(
                color: Colors.lightGreen,
                child: Text("style 2"),
                onPressed: () {
                  print("style 2");
                  _simpleDialog();
                },
              ),
              RaisedButton(
                color: Colors.lightGreen,
                child: Text("style 3"),
                onPressed: () {
                  print("style 3");
                  _actionSheet();
                },
              ),
              RaisedButton(
                color: Colors.lightGreen,
                child: Text("style 4"),
                onPressed: () {
                  print("style 4");
                  _toast_flutterToast();
                },
              ),
              RaisedButton(
                color: Colors.lightGreen,
                child: Text("style 5"),
                onPressed: () {
                  print("style 5");
                  _myDialog();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
/*
  void _alertDialog() async {
    showDialog(//系统函数
      context: context,
      builder: (context){
        return AlertDialog(
           title: Text("delete notice "),
           content: Text("are you sure ???"),
           actions: <Widget>[
             RaisedButton(
                color: Colors.lightGreen,
                child: Text("cancel"),
                onPressed: () {
                  print("cancel");
                  Navigator.of(context).pop("cancel");
                },
              ),RaisedButton(
                color: Colors.lightGreen,
                child: Text("confirm"),
                onPressed: () {
                  print("confirm");
                  Navigator.of(context).pop('confirm');
                },
              ),
           ],
        );
      }
    );
  }
*/
//改进版
    Future<String> _alertDialog<String>() async {
    var chooseResult = await showDialog(//系统函数
      context: context,
      builder: (context){
        return AlertDialog(
           title: Text("delete notice "),
           content: Text("are you sure ???"),
           actions: <Widget>[
             RaisedButton(
                color: Colors.lightGreen,
                child: Text("cancel"),
                onPressed: () {
                  // print("cancel");
                  Navigator.of(context).pop("cancel");
                },
              ),RaisedButton(
                color: Colors.lightGreen,
                child: Text("confirm"),
                onPressed: () {
                  // print("confirm");
                  Navigator.of(context).pop('confirm');
                },
              ),
           ],
        );
      }
    );
    print("this is the result ${chooseResult}");
    return chooseResult;
  }

  Future _simpleDialog() async {
    var result = await  showDialog (
      context: context,
      builder: (context){
        return SimpleDialog(
          title: Text("单选框"),
          children: <Widget>[
            SimpleDialogOption(
              child: Text("A"),
              onPressed: (){
                Navigator.pop(context,"A");
              },
            ),
            Divider(),
            SimpleDialogOption(
              child: Text("B"),
              onPressed: (){
                Navigator.pop(context,"B");
              },
            ),
          ],
        );
      },
    );
    print("选择结果${result}");
  }

  void _actionSheet() async{
     var result = await  showModalBottomSheet (
      context: context,
      builder: (context){
        return Container(
          height: 155,
          child: Column(
              children:<Widget>[
                ListTile(
                  title: Text("分享A"),
                  onTap: (){
                    print("a");
                    Navigator.pop(context,"A");
                  },
                ),
                ListTile(
                  title: Text("分享b"),
                  onTap: (){
                    print("b");
                    Navigator.pop(context,"B");
                  },
                  
                ),
                
              ],
            ),
       
        );
      },
    );
    print("选择结果${result}");
  }

  void _toast_flutterToast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  void _myDialog() {
     showDialog (
      context: context,
      builder: (context){
        return MyDialog("title", "this is content , read it carefully , or you will regret");
      },
    );
  }
}


class MyDialog extends Dialog{
  String title;
  String content;
  MyDialog(this.title,this.content);

  _countTimer(context){
    var timer ;
    // Timer.periodic(duration, callback)
    timer = Timer.periodic(Duration(milliseconds: 3000), (t){
        Navigator.pop(context);
        t.cancel();//取消定时器
    });
  }
   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _countTimer(context);
    return Material(
      type: MaterialType.transparency,//设置透明度
      child: Container(
        width: 111,
        height: 222,
        alignment: Alignment.center,
        child: Container(
          width: 111 ,
          height: 123,
          color: Colors.blue,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Text(this.title),
              ),
              Align(
                alignment: Alignment.topRight,
                child:InkWell(
                  child: Icon(Icons.close,size: 18,),
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Divider(),
              Align(
                alignment: Alignment.center,
                child: Text(this.content),
              ),
            ],
          ),
          ),
        ),
      ),
    );
  }
}