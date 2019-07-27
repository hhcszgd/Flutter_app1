import 'dart:async';
import 'dart:ui';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'RouterHandler.dart';
import 'package:fluttertoast/fluttertoast.dart';
//
class MyApp11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute:
          onGenerateRoute, //invod after performing Navigator.pushNamed(context,"/GoodsPageForTestingRouter" ,arguments: "3699");时会调用这个参数对应的函数
      theme: ThemeData(primaryColor: Colors.orange),
      home: DioUsage(),
    );
  }
}
class DioUsage extends StatefulWidget {
  DioUsage({Key key}) : super(key: key);

  _DioUsageState createState() => _DioUsageState();
}

class _DioUsageState extends State<DioUsage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hello dio"),),
      body: Container(
       child: Container(
         child: RaisedButton(
           child: Text("hello dio"),
           onPressed: (){
              _requestServer();
         },),
       ),
    ),
    );
  }
  _requestServer() async{
    print("ooooooooooooooooooooooooooooooooooo");
    final token = "jeJqUfDgTuZKn3vWYOBkLimsKaOQNqe4";
    final url  =  "https://api.bjyltf.com/v1/index?token=jeJqUfDgTuZKn3vWYOBkLimsKaOQNqe4";
    try {
      var result = await Dio().get(url) ;
      print(result.data.toString());
    }catch(error){
      print(error);
    }
    print("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
    print(window.physicalSize);
    print(window.devicePixelRatio);
  }
}