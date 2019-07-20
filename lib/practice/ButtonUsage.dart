import 'package:flutter/material.dart';
import 'RouterHandler.dart';

class MyApp5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      onGenerateRoute:
      onGenerateRoute, //当项目中执行Navigator.pushNamed(context,"/GoodsPageForTestingRouter" ,arguments: "3699");时会调用这个参数对应的函数
      theme: ThemeData(primaryColor: Colors.orange),
      home: TextButtonPage(),

    );
  }
}

//注意 : FloatActionButton 只能放在Scaffold的里面

class TextButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,//背景颜色
        elevation: 3,//未点击时的阴影
//        shape: ,//形状,如圆角
          onPressed: (){
            print("float action button ");
          },
        child: Icon(Icons.add,size: 33 , color: Colors.yellow,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,//控制floattingActionButton的位置
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
//      crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(//凸起按钮,默认宽高是适应文字的 , 若要控制按钮宽高, 就外嵌一个container

                  child: Text("raised button"),
                  color: Colors.teal,//背景色
                  splashColor: Colors.white,//点击时水波的颜色
                  textColor: Colors.red,
                  highlightColor: Colors.lightGreenAccent,
                  elevation: 13,//阴影效果

                  onPressed: (){
                    print("raised button clicked");
                  }
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
//                  flex: 1,
                  child:Container(
                    height: 66,
                    margin: EdgeInsets.all(10),
                    child: RaisedButton(//默认宽高是适应文字的 , 若要控制按钮宽高, 就外嵌一个container

                        child: Text("自适应父控件宽度按钮"),
                        color: Colors.teal,//背景色
                        splashColor: Colors.white,//点击时水波的颜色
                        textColor: Colors.red,
                        highlightColor: Colors.lightGreenAccent,
                        elevation: 13,//阴影效果

                        onPressed: (){
                          print("raised button clicked");
                        }
                    ),
                  ),

              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
//                  flex: 1,
                child:Container(
                  height: 66,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton.icon(//默认宽高是适应文字的 , 若要控制按钮宽高, 就外嵌一个container
                      icon: Image.network("https://www.itying.com/images/flutter/1.png",width: 32,height: 32,),
                      label: Text("有图标按钮"),
                      color: Colors.teal,//背景色
                      splashColor: Colors.white,//点击时水波的颜色
                      textColor: Colors.red,
                      highlightColor: Colors.lightGreenAccent,
                      elevation: 13,//阴影效果


                      onPressed: (){
                        print("raised button clicked");
                      }
                  ),
                ),

              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
//                  flex: 1,
                child:Container(
                  height: 111,
                  width: 111,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(//默认宽高是适应文字的 , 若要控制按钮宽高, 就外嵌一个container
                      child: Text("设置按钮形状"),
                      color: Colors.teal,//背景色
                      splashColor: Colors.teal,//点击时水波的颜色
                      textColor: Colors.red,
                      highlightColor: Colors.teal,
                      elevation: 13,//阴影效果
//                      shape: RoundedRectangleBorder(//设置圆角
//                        borderRadius: BorderRadius.circular(10)
//                      ),
                      shape: CircleBorder(//设置原型图标
                          side: BorderSide(color: Colors.white),
                      ),
                      onPressed: (){
                        print("raised button clicked");
                      }
                  ),
                ),

              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(//扁平化按钮,没有阴影效果

                  child: Text("Flat Button"),
                  color: Colors.teal,//背景色
                  splashColor: Colors.white,//点击时水波的颜色
                  textColor: Colors.red,
                  highlightColor: Colors.lightGreenAccent,
                  onPressed: (){
                    print("FlatButton clicked");
                  }
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              OutlineButton(//没有背景色,只有一个灰色边框的按钮

                  child: Text("Flat Button"),
//                  color: Colors.teal,//背景色不起作用
//                  splashColor: Colors.white,//点击时水波的颜色 , 也不起作用
                  textColor: Colors.red,
                  highlightColor: Colors.lightGreenAccent,
                  onPressed: (){
                    print("FlatButton clicked");
                  }
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(//一般放在导航栏

                  color: Colors.teal,//背景色不起作用
                  splashColor: Colors.white,//点击时水波的颜色 , 也不起作用
                  icon: Icon(Icons.settings),
                  highlightColor: Colors.lightGreenAccent,
                  onPressed: (){
                    print("FlatButton clicked");
                  }
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(//没有背景色,只有一个灰色边框的按钮
                children: <Widget>[
                  RaisedButton(//凸起按钮,默认宽高是适应文字的 , 若要控制按钮宽高, 就外嵌一个container

                      child: Text("raised"),
                      color: Colors.teal,//背景色
                      splashColor: Colors.white,//点击时水波的颜色
                      textColor: Colors.red,
                      highlightColor: Colors.lightGreenAccent,
                      elevation: 13,//阴影效果

                      onPressed: (){
                        print("raised button clicked");
                      }
                  ),
                  FlatButton(//扁平化按钮,没有阴影效果

                      child: Text("Flat"),
                      color: Colors.teal,//背景色
                      splashColor: Colors.white,//点击时水波的颜色
                      textColor: Colors.red,
                      highlightColor: Colors.lightGreenAccent,
                      onPressed: (){
                        print("FlatButton clicked");
                      }
                  ),
                  OutlineButton(//没有背景色,只有一个灰色边框的按钮

                      child: Text("Outline"),
//                  color: Colors.teal,//背景色不起作用
//                  splashColor: Colors.white,//点击时水波的颜色 , 也不起作用
                      textColor: Colors.red,
                      highlightColor: Colors.lightGreenAccent,
                      onPressed: (){
                        print("FlatButton clicked");
                      }
                  ),
                  IconButton(//没有背景色,只有一个灰色边框的按钮

                      color: Colors.teal,//背景色不起作用
                      splashColor: Colors.white,//点击时水波的颜色 , 也不起作用
                      icon: Icon(Icons.settings),
                      highlightColor: Colors.lightGreenAccent,
                      onPressed: (){
                        print("FlatButton clicked");
                      }
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MyButton(//一般放在导航栏
                  width: 200,
                  height: 66,
                  textColor: Colors.black,
                  text: "myButton",
                  pressed: (){
                    print("FlatButton clicked");
                  }
              ),
            ],
          ),
        ],
      ),
      appBar: AppBar(
        title: Text("test drawer "),
      ),
    );
  }
}
// 自定义按钮
class MyButton extends StatelessWidget{
  final text ;
  final pressed ;
  final double width ;
  final double height ;
  final textColor ;
  const MyButton({this.text="",this.pressed=null,this.width=100.0,this.height=44.0 ,this.textColor = Colors.yellow});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: this.width,
      height: this.height,
      child: RaisedButton(//默认宽高是适应文字的 , 若要控制按钮宽高, 就外嵌一个container
          child: Text(this.text),
          color: Colors.teal,//背景色
          splashColor: Colors.teal,//点击时水波的颜色
          textColor: this.textColor,
          highlightColor: Colors.teal,
          elevation: 13,//阴影效果
//                      shape: RoundedRectangleBorder(//设置圆角
//                        borderRadius: BorderRadius.circular(10)
//                      ),
          onPressed: this.pressed,
      ),
    );
  }
}
