import 'package:flutter/material.dart';
import 'HomePageTest.dart';
import 'LoginTest.dart';
class RegisterTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RegisterTestState();
  }

}

class _RegisterTestState extends State<RegisterTest >{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("register page "),
      ),
      body: Container(
        color: Colors.green,

        child: RaisedButton(
            child: Text("done of register"),
            onPressed:(){
              //直接跳转到跟路由(根控制器)
//              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context){ return LoginTest();}), (route) => route == null  );
                Navigator.popUntil(
                    context,
                                        (route) {
                                          print(route.settings.name);
                                          print(route.toString());
                                          if (route.settings.name == "/") { //根路由保持
                                            return true; //保留
                                          } else { //根路由以外的控制器全移除
                                            return false; //不保留
                                          }
                                        }
                );

//              Navigator.of(context).pushAndRemoveUntil(
//                  MaterialPageRoute(builder: (context){
//                    return LoginFailureTest();
//                  }),
//                      (route) {
//                    print(route.settings.name);
//                if (route.settings.name == "/"){//根路由保持
//                  return true ;//保留
//                } else{//根路由以外的控制器全移除
//                  return false ;//不保留
//                }
//              });


        }),
      ),
    );
  }
}

/*

一、什么是路由
 路由最开始在前端领域是很流行的，路由技术最近几年开始在移动端也逐渐蔓延开来。路由主要是用于页面跳转的一种方式，方便管理页面之间的跳转和互相传递数据，进行交互。使用路由，我们轻松实现从一个页面转换到另一个页面，系统底层其实是在帮我们将小部件执行入栈出栈操作，当然至于它们如何入栈出栈就不是本篇文章的重点了。

二、Flutter路由的详细使用
（一）初始Navigator

在Android中，我们开启新的页面是Activity。在iOS中，我们开启新的页面是ViewControllers。在Flutter中，每一个页面都是小部件， 我们如何开启到新的页面呢？Flutter给我们提供了一个API,叫做Navigator

Navigator 继承自 StatefulWidget，它也是小组件，它有很多相关静态函数，可以帮我们达到页面跳转和数据交互的功能：

 push 将设置的router信息推送到Navigator上，实现页面跳转。
 of 主要是获取 Navigator最近实例的好状态。
 pop 导航到新页面，或者返回到上个页面。
 canPop 判断是否可以导航到新页面
maybePop 可能会导航到新页面
popAndPushNamed 指定一个路由路径，并导航到新页面。
popUntil 反复执行pop 直到该函数的参数predicate返回true为止。
 pushAndRemoveUntil  将给定路由推送到Navigator，删除先前的路由，直到该函数的参数predicate返回true为止。
 pushNamed  将命名路由推送到Navigator。
pushNamedAndRemoveUntil  将命名路由推送到Navigator，删除先前的路由，直到该函数的参数predicate返回true为止。
pushReplacement  路由替换。
pushReplacementNamed  这个也是替换路由操作。推送一个命名路由到Navigator，新路由完成动画之后处理上一个路由。
removeRoute 从Navigator中删除路由，同时执行Route.dispose操作。
removeRouteBelow  从Navigator中删除路由，同时执行Route.dispose操作，要替换的路由是传入参数anchorRouter里面的路由。
replace 将Navigator中的路由替换成一个新路由。
replaceRouteBelow 将Navigator中的路由替换成一个新路由，要替换的路由是是传入参数anchorRouter里面的路由。
（二）路由的操作方式

（1）使用Navigator.push实现发送路由，Navigator.pop返回上一个页面。

push函数的参数1是 上下文，参数2是 Router，我们这里使用的是 Router的孙子类（好几层继承的子类）MaterialPageRouter 这个类。该类必须要传入一个闭包函数 WidgetBuilder，该闭包函数的参数是 BuildContext对象，我们这里使用的是匿名函数的形式，加上胖箭头符号，简写成这样：builder: (context) => new App(); 相信大家看到这里也基本能看明白这句表达式的含义。返回上一个页面使用 Navigator.pop(context);

页面A 的代码如下图所示：
 */