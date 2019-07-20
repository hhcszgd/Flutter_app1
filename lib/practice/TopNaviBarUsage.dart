import 'package:flutter/material.dart';
import 'RouterHandler.dart';

class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      onGenerateRoute:
          onGenerateRoute, //当项目中执行Navigator.pushNamed(context,"/GoodsPageForTestingRouter" ,arguments: "3699");时会调用这个参数对应的函数
      theme: ThemeData(primaryColor: Colors.orange),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.teal,
      child: ListView(
        children: <Widget>[
          RaisedButton(
              child: Text("go to custom navibar page"),
              onPressed: () {
                Navigator.pushNamed(context, "/CustomTopTabBarController");
              })
        ],
      ),
    );
  }
}





// 自定义TabBarController,必须继承自StatefulWidget
class CustomTopTabBarController extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CustomTopTabBarControllerState();
  }


}


class _CustomTopTabBarControllerState extends State<CustomTopTabBarController> with SingleTickerProviderStateMixin{
  TabController _tabController ;
  @override
  void initState() {//生命周期函数1 , 初始化时调用 , 在构造函数之后调用 , 且只调用一次
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
    //自定义tabBarController的好处是 , 可以监听一些事件
    _tabController.addListener((){
      print("之前 ${_tabController.previousIndex}");
      print("现在 ${_tabController.index}");
    });
  }

  @override
  void dispose() {//生命周期函数2 , 当组件销毁的时候调用
    // TODO: implement dispose
    super.dispose();
    print("dispose be called");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(//如果不是一级页面 , 会冲掉返回键
        child: Text("左侧 侧边栏"),
      ),
      appBar: AppBar(
        title: Text(" CustomTopTabBarController ",style: TextStyle(color: Colors.green),),
        bottom: TabBar(
            controller: _tabController,
            tabs: [
              Text("推荐"),
              Text("科技"),
              Text("物理"),
            ]
        ),
      ),
      body:TabBarView(
          controller: _tabController,
          children: [

        Container(
          child: ListView(
            children: <Widget>[
              ListTile(title:Text("娱1")),
              ListTile(title:Text("娱2")),
              ListTile(title:Text("娱3")),
              ListTile(title:Text("娱4")),
              ListTile(title:Text("娱5")),
              ListTile(title:Text("娱")),
              ListTile(title:Text("娱7")),
              ListTile(title:Text("娱8")),
            ],
          ),
        ),

        Container(
          child: ListView(
            children: <Widget>[
              ListTile(title:Text("乐1")),
              ListTile(title:Text("乐2")),
              ListTile(title:Text("乐3")),
              ListTile(title:Text("乐4")),
              ListTile(title:Text("乐5")),
              ListTile(title:Text("乐6")),
              ListTile(title:Text("乐7")),
              ListTile(title:Text("乐8")),
            ],
          ),
        ),

        Container(
          child: ListView(
            children: <Widget>[
              ListTile(title:Text("娱乐1")),
              ListTile(title:Text("娱乐2")),
              ListTile(title:Text("娱乐3")),
              ListTile(title:Text("娱乐4")),
              ListTile(title:Text("娱乐5")),
              ListTile(title:Text("娱乐6")),
              ListTile(title:Text("娱乐7")),
              ListTile(title:Text("娱乐8")),
            ],
          ),
        ),

      ]),
    );
  }

}












//系统自带的TabController
class SystemTopNaviBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(

        length: 11,
        child: Scaffold(

          appBar: AppBar(

            centerTitle: true,
            actions: <Widget>[
//              RaisedButton(
//                color: Colors.orange,
//                  child: Container(
//                    width: 10,
//                    height: 10,
////  1                 color : Colors.red ,
//                    child: Icon(Icons.menu,size: 23,),
//                  ),
//                  onPressed: (){
//                print("1");
//              }),
              Container(
                child:  RaisedButton(
                    color: Colors.orange,
                    child: Icon(Icons.menu,size: 23),
                    onPressed: (){
                      print("1");
                    }),
                width: 50,
                height: 50,
                color: Colors.red ,
              ),
             Container(
               child:  RaisedButton(
                   color: Colors.orange,
                   child: Icon(Icons.search,size: 23),
                   onPressed: (){
                     print("2");
                   }),
               width: 50,
               height: 50,
               color: Colors.red ,
             ),
            ],
//            leading: RaisedButton(
//                color:  Colors.orange,
//                child: Text("返回",style: TextStyle(fontSize: 10),),
//                onPressed: (){
//                  Navigator.pop(context);
//                  print("back");
//                }),
            title: Text("新闻"),
            bottom: TabBar(
                isScrollable: true ,
                tabs: [
                  Text("推荐"),
                  Text("科技"),
                  Text("娱乐"),
                  Text("娱乐"),
                  Text("娱乐"),
                  Text("娱乐"),
                  Text("娱乐"),
                  Text("娱乐"),
                  Text("娱乐"),
                  Text("娱乐"),
                  Text("娱乐"),
            ]),
          ),
//            title: TabBar(
//                tabs:[
//                  Text("推荐"),
//                  Text("科技"),
//                  Text("娱乐"),
//                ]),
//          ),
          body: TabBarView(children: [

            Container(
              child: ListView(
                children: <Widget>[
                  ListTile(title:Text("推荐1")),
                  ListTile(title:Text("推荐2")),
                  ListTile(title:Text("推荐3")),
                  ListTile(title:Text("推荐4")),
                  ListTile(title:Text("推荐5")),
                  ListTile(title:Text("推荐6")),
                  ListTile(title:Text("推荐7")),
                  ListTile(title:Text("推荐8")),
                  UiKitView(viewType: "Label"),
                ],
              ),
            ),
            Container(
              child: ListView(
                children: <Widget>[
                  ListTile(title:Text("科技1")),
                  ListTile(title:Text("科技2")),
                  ListTile(title:Text("科技3")),
                  ListTile(title:Text("科技4")),
                  ListTile(title:Text("科技5")),
                  ListTile(title:Text("科技6")),
                  ListTile(title:Text("科技7")),
                  ListTile(title:Text("科技8")),
                ],
              ),
            ),
            Container(
              child: ListView(
                children: <Widget>[
                  ListTile(title:Text("娱乐1")),
                  ListTile(title:Text("娱乐2")),
                  ListTile(title:Text("娱乐3")),
                  ListTile(title:Text("娱乐4")),
                  ListTile(title:Text("娱乐5")),
                  ListTile(title:Text("娱乐6")),
                  ListTile(title:Text("娱乐7")),
                  ListTile(title:Text("娱乐8")),
                ],
              ),
            ),
            Container(
              child: ListView(
                children: <Widget>[
                  ListTile(title:Text("娱乐1")),
                  ListTile(title:Text("娱乐2")),
                  ListTile(title:Text("娱乐3")),
                  ListTile(title:Text("娱乐4")),
                  ListTile(title:Text("娱乐5")),
                  ListTile(title:Text("娱乐6")),
                  ListTile(title:Text("娱乐7")),
                  ListTile(title:Text("娱乐8")),
                ],
              ),
            ),
            Container(
              child: ListView(
                children: <Widget>[
                  ListTile(title:Text("娱乐1")),
                  ListTile(title:Text("娱乐2")),
                  ListTile(title:Text("娱乐3")),
                  ListTile(title:Text("娱乐4")),
                  ListTile(title:Text("娱乐5")),
                  ListTile(title:Text("娱乐6")),
                  ListTile(title:Text("娱乐7")),
                  ListTile(title:Text("娱乐8")),
                ],
              ),
            ),
            Container(
              child: ListView(
                children: <Widget>[
                  ListTile(title:Text("娱乐1")),
                  ListTile(title:Text("娱乐2")),
                  ListTile(title:Text("娱乐3")),
                  ListTile(title:Text("娱乐4")),
                  ListTile(title:Text("娱乐5")),
                  ListTile(title:Text("娱乐6")),
                  ListTile(title:Text("娱乐7")),
                  ListTile(title:Text("娱乐8")),
                ],
              ),
            ),
            Container(
              child: ListView(
                children: <Widget>[
                  ListTile(title:Text("娱乐1")),
                  ListTile(title:Text("娱乐2")),
                  ListTile(title:Text("娱乐3")),
                  ListTile(title:Text("娱乐4")),
                  ListTile(title:Text("娱乐5")),
                  ListTile(title:Text("娱乐6")),
                  ListTile(title:Text("娱乐7")),
                  ListTile(title:Text("娱乐8")),
                ],
              ),
            ),
            Container(
              child: ListView(
                children: <Widget>[
                  ListTile(title:Text("娱乐1")),
                  ListTile(title:Text("娱乐2")),
                  ListTile(title:Text("娱乐3")),
                  ListTile(title:Text("娱乐4")),
                  ListTile(title:Text("娱乐5")),
                  ListTile(title:Text("娱乐6")),
                  ListTile(title:Text("娱乐7")),
                  ListTile(title:Text("娱乐8")),
                ],
              ),
            ),
            Container(
              child: ListView(
                children: <Widget>[
                  ListTile(title:Text("娱乐1")),
                  ListTile(title:Text("娱乐2")),
                  ListTile(title:Text("娱乐3")),
                  ListTile(title:Text("娱乐4")),
                  ListTile(title:Text("娱乐5")),
                  ListTile(title:Text("娱乐6")),
                  ListTile(title:Text("娱乐7")),
                  ListTile(title:Text("娱乐8")),
                ],
              ),
            ),
            Container(
              child: ListView(
                children: <Widget>[
                  ListTile(title:Text("娱乐1")),
                  ListTile(title:Text("娱乐2")),
                  ListTile(title:Text("娱乐3")),
                  ListTile(title:Text("娱乐4")),
                  ListTile(title:Text("娱乐5")),
                  ListTile(title:Text("娱乐6")),
                  ListTile(title:Text("娱乐7")),
                  ListTile(title:Text("娱乐8")),
                ],
              ),
            ),
            Container(
              child: ListView(
                children: <Widget>[
                  ListTile(title:Text("娱乐1")),
                  ListTile(title:Text("娱乐2")),
                  ListTile(title:Text("娱乐3")),
                  ListTile(title:Text("娱乐4")),
                  ListTile(title:Text("娱乐5")),
                  ListTile(title:Text("娱乐6")),
                  ListTile(title:Text("娱乐7")),
                  ListTile(title:Text("娱乐8")),
                ],
              ),
            ),

          ]),
        ));
  }
}



