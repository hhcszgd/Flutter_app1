import 'package:flutter/material.dart';
class HomePageTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageTestState();
  }

}

class _HomePageTestState extends State<HomePageTest >{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("home  page "),
      ),
      body: Container(
        color: Colors.green,
        width: 414,
        child: Column(
          children: <Widget>[
            RaisedButton(
                child: Text("go to register page  "),
                onPressed:(){

                  Navigator.pushNamed(context, "/RegisterTest");
                  print("register cc ");
                }),
            RaisedButton(
                child: Text("go to login page "),
                onPressed:(){
                  Navigator.pushNamed(context, "/LoginTest");
                  print("login");
                }),
          ],
        )
      ),
    );
  }
}