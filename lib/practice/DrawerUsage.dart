import 'package:flutter/material.dart';
import 'RouterHandler.dart';

class MyApp4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      onGenerateRoute:
      onGenerateRoute, //当项目中执行Navigator.pushNamed(context,"/GoodsPageForTestingRouter" ,arguments: "3699");时会调用这个参数对应的函数
      theme: ThemeData(primaryColor: Colors.orange),
      home: TextDrawerPage(),

    );
  }
}

class TextDrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(//如果当前页面不是一级页面, 返回键会被冲掉
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(child:
                DrawerHeader(//抽屉头,里面的子控件需要自己实现 , 也可使用系统模板组件UserAccountsDrawerHeader
                  child:Text("hello flutter",style: TextStyle(color: Colors.red),),
                  decoration: BoxDecoration(
//                    color: Colors.blue,
                    image:DecorationImage(image: NetworkImage("https://pics5.baidu.com/feed/6c224f4a20a44623c3dc1929462f780b0cf3d77e.jpeg?token=cb938a2e9e5a67ea411b10b32429bdc8&s=AD1BA05C42BC95CC165E52930300F09B"),
                      fit: BoxFit.cover,
                    ),
                  ),

                ),
//                UserAccountsDrawerHeader(//抽屉头,里面的子控件固定 , 不支持自定义
//                  accountName:Text("hhcszgd",style: TextStyle(color: Colors.yellow),),
//                  accountEmail: Text("hhcszgd@sina.com"),
//                  currentAccountPicture: CircleAvatar(
//                    backgroundImage: NetworkImage("https://www.itying.com/images/flutter/4.png"),
//                  ),
//                  otherAccountsPictures: <Widget>[
//                    Image.network("https://www.itying.com/images/flutter/1.png"),
//                    Image.network("https://www.itying.com/images/flutter/2.png"),
//                    Image.network("https://www.itying.com/images/flutter/3.png"),
//                    Image.network("https://www.itying.com/images/flutter/4.png"),
//                    Image.network("https://www.itying.com/images/flutter/5.png"),
//                  ],
//                  decoration: BoxDecoration(
////                    color: Colors.blue,
//                    image:DecorationImage(
//                        image: NetworkImage("https://www.itying.com/images/flutter/1.png"),
//                        fit: BoxFit.cover,
//                    ),
//                  ),
//
//                ),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("我的空间"),
            ),
            Divider(),//分割线
            ListTile(
              leading: Icon(Icons.people),
              title: Text("用户中心"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("设置"),
              onTap: (){
                print("设置");
                Navigator.of(context).pop();//收回抽屉
                Navigator.pushNamed(context, "/TestSettingPage");
              },
            ),
          ],
        ),
      ),
      endDrawer:Drawer(
        child: Drawer(//如果当前页面不是一级页面, 返回键会被冲掉
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(child:
//                  DrawerHeader(//抽屉头,里面的子控件需要自己实现 , 也可使用系统模板组件UserAccountsDrawerHeader
//                    child:Text("hello flutter",style: TextStyle(color: Colors.red),),
//                    decoration: BoxDecoration(
////                    color: Colors.blue,
//                      image:DecorationImage(image: NetworkImage("https://pics5.baidu.com/feed/6c224f4a20a44623c3dc1929462f780b0cf3d77e.jpeg?token=cb938a2e9e5a67ea411b10b32429bdc8&s=AD1BA05C42BC95CC165E52930300F09B"),
//                        fit: BoxFit.cover,
//                      ),
//                    ),
//
//                  ),
                UserAccountsDrawerHeader(//抽屉头,里面的子控件固定 , 不支持自定义
                  accountName:Text("hhcszgd",style: TextStyle(color: Colors.yellow),),
                  accountEmail: Text("hhcszgd@sina.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage("https://www.itying.com/images/flutter/4.png"),
                  ),
                  otherAccountsPictures: <Widget>[
                    Image.network("https://www.itying.com/images/flutter/1.png"),
                    Image.network("https://www.itying.com/images/flutter/2.png"),
                    Image.network("https://www.itying.com/images/flutter/3.png"),
                    Image.network("https://www.itying.com/images/flutter/4.png"),
                    Image.network("https://www.itying.com/images/flutter/5.png"),
                  ],
                  decoration: BoxDecoration(
//                    color: Colors.blue,
                    image:DecorationImage(
                        image: NetworkImage("https://www.itying.com/images/flutter/1.png"),
                        fit: BoxFit.cover,
                    ),
                  ),

                ),
                  ),
                ],
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("我的空间"),
              ),
              Divider(),//分割线
              ListTile(
                leading: Icon(Icons.people),
                title: Text("用户中心"),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("设置"),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("test drawer "),
      ),
    );
  }
}

class TestSettingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("this is setting page"),
      ),
    );
  }
}
