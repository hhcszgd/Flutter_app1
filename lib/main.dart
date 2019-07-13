import 'package:flutter/material.dart';
import 'practice/RouterHandler.dart';
import 'practice/ImageUseage.dart';
import 'practice/TextAndContainerUseage.dart';
import 'practice/ListViewUsage.dart';
import 'practice/ColumnAndRowUsage.dart';
import 'practice/StackAndAlignUsage.dart';
import 'practice/WrapUsage.dart';
import 'practice/CardUsage.dart';
import 'practice/StatefullWidgetUsage.dart';
import 'practice/BottomNavigationBarItemUsage.dart';
import 'practice/NameRouterUsage.dart';
import 'practice/HomePageTest.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: HomePageTest(),
      onGenerateRoute:
          onGenerateRoute, //当项目中执行Navigator.pushNamed(context,"/GoodsPageForTestingRouter" ,arguments: "3699");时会调用这个参数对应的函数
      theme: ThemeData(primaryColor: Colors.orange),
    );
  }
}








class MyApp1 extends StatelessWidget {
  final routes = {
    "/": (context) => SearchPageForTestingRouter(),
    "/SearchPageForTestingRouter": (context) => SearchPageForTestingRouter(),
    "/GoodsPageForTestingRouter": (context, {arguments}) =>
        GoodsPageForTestingRouter(arguments: arguments)
  };

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
//      initialRoute: "/",
      home: SearchPageForTestingRouter(),
//      routes: {
//        "/":(context)=>SearchPageForTestingRouter(),
//        "/SearchPageForTestingRouter": (context) =>
//            SearchPageForTestingRouter(),
//        "/GoodsPageForTestingRouter": (context, {arguments}) => GoodsPageForTestingRouter(arguments: arguments)
//      },
      onGenerateRoute: (RouteSettings settings) {
        print(settings.name);
        final String name = settings.name;
        final Function pageContentBuilder = routes[name];
        if (pageContentBuilder != null) {
          final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context, arguments: settings.arguments));
          return route;
        } else {
          final Route route = MaterialPageRoute(
              builder: (context) => pageContentBuilder(context));
          return route;
        }
      },
//      home: AppHomePageForRouter(),
      /*
      Scaffold(//有导航栏的视图
        bottomNavigationBar: BottomNavigationBar(items://但是这样设置没有点击效果,需要自定义
          [
            BottomNavigationBarItem(icon: Icon(Icons.home) ,title: Text("首页")),
            BottomNavigationBarItem(icon: Icon(Icons.category) ,title: Text("分类")),
            BottomNavigationBarItem(icon: Icon(Icons.settings) ,title: Text("设置")),
          ],
        ),
        appBar:AppBar(
            title: Text("this is navibar title"),
        ),
        body: StateWidgetUsage()

      ),
      */
      theme: ThemeData(primaryColor: Colors.orange),
    );
  }
}
