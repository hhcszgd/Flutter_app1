import 'package:flutter/material.dart';

class WrapUsage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(10),
      child: Wrap(

        direction: Axis.horizontal,
        spacing: 10,
        runSpacing: 30,
        children: <Widget>[
          MyButton("ehll "),
          MyButton("ehss 0"),
          MyButton("eh1"),
          MyButton("elee 2"),
          MyButton("eleee 3"),
          MyButton("ehvvvvvvvedfgsdfgsadfg4"),
          MyButton("ehlleee 5"),
          MyButton("ehleee 6"),
          MyButton("eeee 7"),
          MyButton("ehlee 8"),
          MyButton("eeee 9"),
        ],
      ),
    );
  }

}

class MyButton extends StatelessWidget{
  final String  title ;
  MyButton(this.title);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text(this.title),
      textColor: Theme.of(context).accentColor,
      onPressed: (){print("sss");},
    );
  }
}