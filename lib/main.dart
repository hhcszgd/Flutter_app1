

import 'package:flutter/material.dart';

void main(){
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp (
      home: Scaffold(
        appBar:AppBar(
            title: Text("this is navibar title"),
        ),
        body: HomePage()

      ),
      theme: ThemeData(primaryColor: Colors.orange),

    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Text(
          "this is co",
          textAlign: TextAlign.right,//居中,居左,还是居右
          style: TextStyle(
            color: Color.fromARGB(125, 255, 0, 0),
            fontSize: 12,
            letterSpacing: -1 ,//字间距
            wordSpacing: -2,//单词之间的间隙
            fontWeight: FontWeight.bold ,//加粗还是正常
            fontStyle: FontStyle.italic, // 斜体
            decoration: TextDecoration.underline,//下划线
            decorationColor: Colors.blue,//文字装饰线(下划线)颜色
            decorationStyle: TextDecorationStyle.dashed//装饰线为虚线
          ),
          overflow: TextOverflow.ellipsis,//可以配合maxLines使用,当文字超出控件时(fade)渐隐还是,(fade)换行,还是(ellipsis)...
          maxLines: 1,
          textScaleFactor: 2,//字体放大两倍
        ),
        width: 333,
        height: 222,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            color: Colors.blue,
            width: 20
          ), 
            borderRadius: BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              BoxShadow(
              color: Colors.cyan,
              offset: Offset(3, 5) ,
                  blurRadius:9//虚化程度
            )
            ]

        ),
        margin: EdgeInsets.all(22),//表示当前container与外部其它组件的距离
        padding: EdgeInsets.all(10),//container与边缘child之间的距离
//        transform: Matrix4.translationValues(100, 0, 0),//x方向位移100
//        transform: Matrix4.rotationZ(0.2),//沿z轴旋转
//        transform: Matrix4.diagonal3Values(1.2, 1, 1),//沿X轴放大1.2倍
        alignment: Alignment.bottomRight,//居右下
        
//        color: Colors.red,//这个参数和decoration只能传其中一个
      )
    );
  }
}




























/*

import 'package:flutter/material.dart';


void main(){
  runApp(
    Center(
     child: Text(
       'congratulation',
       textDirection: TextDirection.ltr,///如果不指定方向会报错flutter: No Directionality widget found.
       style: TextStyle(
         fontSize: 30.0,
         color: Colors.red,

       ),
    )
    )
  );
}


*/

/*
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('I am king'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
        primaryColor: Colors.orange
      )

    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(

      child: Container(
        child: Text(
          'you are so beautifulll',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.red,

          ),
        ),
        height: 200,
        width: 150,
        decoration: BoxDecoration(),
      ),
    );
  }
}

*/

































/*
import 'package:flutter/material.dart';
void main(){
  runApp( MyApp());
}


// 自定义组件(创建类)
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter demo"),//导航栏标题
        ),
        body: HomeContent(), // 主题页面内容

      ),
      theme: ThemeData(
          primarySwatch: Colors.yellow
      ),  // 主题色
    );
//    return HomeContent();
  }

}


class HomeContent extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child:  Text(
        "hello girl , how are you ",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 30.0 ,
            color: Colors.red
        ),
      ),
    );
  }

}

*/

/*

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo xxxxxx Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


 **/