

import 'package:flutter/material.dart';
import 'ImageUseage.dart';
import 'TextAndContainerUseage.dart';
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
        body: ImageUseWithCircular2()

      ),
      theme: ThemeData(primaryColor: Colors.orange),

    );
  }
}




