import 'package:flutter/material.dart';

class AppHomePageForRouter extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AppHomePageForRouterState();
  }


}

class _AppHomePageForRouterState extends State<AppHomePageForRouter>{
  List pageList = [_TestRouterPage(),_TestRouterPage()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold (//有导航栏的视图

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.currentIndex,
        iconSize: 44,
        type: BottomNavigationBarType.fixed,//使选项卡栏可以有超过三个以上的item
        fixedColor: Colors.red,//选中item的颜色
        onTap: (tapIndex){
          setState(() {
            this.currentIndex = tapIndex;
          });
        },
        items://但是这样设置没有点击效果,需要自定义
        [
          BottomNavigationBarItem(icon: Icon(Icons.home) ,title: Text("首页"),),
          BottomNavigationBarItem(icon: Icon(Icons.category) ,title: Text("分类")),
//          BottomNavigationBarItem(icon: Icon(Icons.settings) ,title: Text("设置")),
//          BottomNavigationBarItem(icon: Icon(Icons.map) ,title: Text("我的")),
        ],
      ),
      appBar:AppBar(
        title: Text("this is navibar title"),
      ),
      body: this.pageList[currentIndex],

    );
  }
}

class _TestRouterPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
        child: Text("go to search page"),
        onPressed: (){
          // 普通路由跳转
          Navigator.of(context).push(
              MaterialPageRoute(builder:(context ){
                return SearchPageForTestingRouter();
              })
          );
        });
  }
}


class SearchPageForTestingRouter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ssss"),
      ),
      body: Container(
        color: Colors.yellow,
        child: Column(

          children: <Widget>[
            Text("this is search page"),
            RaisedButton(
                child: Text("go to search page"),
                onPressed: (){
                  // 普通路由跳转
                  Navigator.pushNamed(context,"/GoodsPageForTestingRouter" ,arguments: "3699");
                }),
          ],
        ),
      ),
    );
  }
}


class GoodsPageForTestingRouter extends StatelessWidget{
  //参数 , 必须是 arguments , 写明代表goods id等等
  String arguments ;
  GoodsPageForTestingRouter({this.arguments="0"});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ffff"),
      ),
      body: Container(
        color: Colors.green,
        child: Column(

          children: <Widget>[
            Text("this is goods page ${this.arguments}"),
            RaisedButton(
                child: Text("go to xxxxxxx page"),
                onPressed: (){
                  // 普通路由跳转
                  Navigator.pushNamed(context,"/SearchPageForTestingRouter");
                }),
          ],
        ),
      ),
    );
  }
}