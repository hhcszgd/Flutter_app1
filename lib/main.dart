

import 'package:flutter/material.dart';
import 'ImageUseage.dart';
import 'TextAndContainerUseage.dart';
import 'ListViewUsage.dart';
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
        body: TestGridView()

      ),
      theme: ThemeData(primaryColor: Colors.orange),

    );
  }
}




