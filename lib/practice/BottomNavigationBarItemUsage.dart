import 'package:flutter/material.dart';
import 'RouterUsage.dart';
class AppHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AppHomePageState();
  }


}

class _AppHomePageState extends State<AppHomePage>{
  List pageList = [_page1(),_page2(),_page3(),];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(//有导航栏的视图
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
          BottomNavigationBarItem(icon: Icon(Icons.settings) ,title: Text("设置")),
          BottomNavigationBarItem(icon: Icon(Icons.map) ,title: Text("我的")),
        ],
        ),
        appBar:AppBar(
          title: Text("this is navibar title"),
        ),
        body: this.pageList[currentIndex],

    );
  }
}
// 普通路由跳转
class _page1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
        child: Text("go to search page"),
        onPressed: (){
          // 普通路由跳转
      Navigator.of(context).push(
        MaterialPageRoute(builder:(context ){
          return SearchPage(keyWord: "xoxo",);
        })
      );
    });
  }
}


class _page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text("page 2");
  }
}
class _page3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text("page 3");
  }
}
