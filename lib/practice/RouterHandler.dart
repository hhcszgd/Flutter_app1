import 'package:flutter/material.dart';
import 'package:flutter_app1/practice/NameRouterUsage.dart';
import 'package:flutter_app1/practice/LoginTest.dart';
import 'package:flutter_app1/practice/RegisterTest.dart';
import 'TopNaviBarUsage.dart';
import 'DrawerUsage.dart';
import 'DatePickerUsage.dart';
final routes = {
  "/GoodsPageForTestingRouter": (context, {arguments}) =>
      GoodsPageForTestingRouter(
        arguments: arguments,
      ),
  "/SearchPageForTestingRouter": (context) => SearchPageForTestingRouter(),
  "/RegisterTest": (context) => RegisterTest(),
  "/LoginTest": (context) => LoginTest(),
  "/LoginSuccessTest": (context) => LoginSuccessTest(),
  "/LoginFailureTest": (context) => LoginFailureTest(),
  "/SystemTopNaviBarPage": (context) => SystemTopNaviBarPage(),
  "/CustomTopTabBarController" : (context) => CustomTopTabBarController(),
  "/TestSettingPage" : (context) => TestSettingPage(),
  "/SystemDatePickerPage" : (context) => SystemDatePickerPage(),
  "/CustomDatePickerPage" : (context) => CustomDatePickerPage(),
};

//函数类型为 , Route<dynamic> Function(RouteSettings settings);
// 返回值类型为Route<dynamic>  , 参数类型为RouteSettings
Route onGenerateRoute(RouteSettings settings) {
  //builder 类型为Widget Function(BuildContext context);
  String name = settings.name;
  Function f = routes[name];
  final arguments = settings.arguments;
  if (f != null) {
    if (settings.arguments == null) {
      return MaterialPageRoute(builder: (context) {
        final page = routes[settings.name](context);
        return page;
      });
    } else {
      return MaterialPageRoute(builder: (context) {
        final page = f(context, arguments: arguments);
        //      page.arguments = settings.arguments;
        return page;
      });
    }
  } else {
    print("找不到(${name})对应的页面");
  }
}
