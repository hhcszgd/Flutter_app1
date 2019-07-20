import 'package:flutter/material.dart';
import 'RouterHandler.dart';
//仿咸鱼按钮
class MyApp6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      onGenerateRoute:
      onGenerateRoute, //当项目中执行Navigator.pushNamed(context,"/GoodsPageForTestingRouter" ,arguments: "3699");时会调用这个参数对应的函数
      theme: ThemeData(primaryColor: Colors.orange),
      home: TestFloattingActionButtonPage(),

    );
  }
}

class TestFloattingActionButtonPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return  _TestFloattingActionButtonPageState();
  }
}

class _TestFloattingActionButtonPageState extends State<TestFloattingActionButtonPage>{
  int currentIndex = 0 ;
  List pageList = [Container(color: Colors.purple,),Container(color: Colors.green,),Container(color: Colors.pink,)];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      floatingActionButton:Container(
        width: 64,
        height: 64,
        padding: EdgeInsets.all(5),//设置白环
        margin: EdgeInsets.only(top: 20), //设置离底部的距离
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Colors.white,
        ),
        
        child:  FloatingActionButton(
          backgroundColor: this.currentIndex == 1 ?  Colors.orange : Colors.brown,//动态设置凸起按钮的背景颜色

          elevation: 3,//未点击时的阴影
//        shape: ,//形状,如圆角
          onPressed: (){

            setState(() {
              this.currentIndex = 1;
            });
          },

          child: Icon(Icons.add,size: 33 , color: Colors.yellow,),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,//控制floattingActionButton的位置
      appBar: AppBar(
        title: Text("test floatting action button page"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.currentIndex,
        onTap: (clickIndex){
          print(clickIndex);

          setState(() {
            this.currentIndex = clickIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("item 1"),

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("item 2")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("item 3")
          ),
        ],),
      body:pageList[currentIndex],

    );
  }
}