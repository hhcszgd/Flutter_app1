import 'package:flutter/material.dart';

class LoginTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
// TODO: implement createState
    return _LoginTestState();
  }
}

class _LoginTestState extends State<LoginTest> {
  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("login page "),
      ),
      body: Container(
        color: Colors.green,
        child: Column(
          children: <Widget>[
            RaisedButton(
                child: Text("go to login success page "),
                onPressed: () {
//              Navigator.pushNamed(context, "/LoginSuccessTest");
                  //替换路由
                  Navigator.of(context).pushReplacementNamed("/LoginSuccessTest");//push出下一个页面,并且把当前页面在控制器栈中替换掉 , 所以返回的时候,当前控制器因为被替换,所以会被跳过
                }),
            RaisedButton(
                child: Text("go to login failure page "),
                onPressed: () {
//              Navigator.pushNamed(context, "/LoginSuccessTest");
                  //替换路由
                  Navigator.pushNamed(context,  "/LoginFailureTest");//push出下一个页面,并且把当前页面在控制器栈中替换掉 , 所以返回的时候,当前控制器因为被替换,所以会被跳过
                }),
          ],
        )
      ),
    );
  }
}



class LoginSuccessTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
// TODO: implement createState
    return _LoginSuccessTestState();
  }
}

class _LoginSuccessTestState extends State<LoginSuccessTest> {
  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("login success page "),
      ),
      body: Container(
        color: Colors.green,
        child: RaisedButton(
            child: Text("this is a button "),
            onPressed: () {
              Navigator.pop(context);
              print("button click ");
            }),
      ),
    );
  }
}


class LoginFailureTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
// TODO: implement createState
    return _LoginFailureTestState();
  }
}

class _LoginFailureTestState extends State<LoginFailureTest > {
  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("login failure  page "),
      ),
      body: Container(
        color: Colors.green,
        child: RaisedButton(
            child: Text("go to register "),
            onPressed: () {
              Navigator.pushNamed(context, "/RegisterTest");
              print("button click ");
            }),
      ),
    );
  }
}
