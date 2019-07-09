

import 'package:flutter/material.dart';
import 'ImageUseage.dart';
import 'TextAndContainerUseage.dart';
import 'ListViewUsage.dart';
import 'ColumnAndRowUsage.dart';
import 'package:flutter_app1/StackAndAlignUsage.dart';
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
        body: TestStack()

      ),
      theme: ThemeData(primaryColor: Colors.orange),

    );
  }
}




