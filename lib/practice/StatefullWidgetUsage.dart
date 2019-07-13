import 'package:flutter/material.dart';

class StateWidgetUsage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StateWidgetUsageState();
  }



}

class _StateWidgetUsageState extends State<StateWidgetUsage>{
  int i =0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Text("第${this.i}次点击"),
        RaisedButton(
            child: Text("xxxx"),
            onPressed: (){
            setState(() {
              this.i++ ;
            });
        })

      ],
    );
  }
}