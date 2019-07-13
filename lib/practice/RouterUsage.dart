import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget{
  String keyWord ;
  SearchPage({this.keyWord="defaultValue"});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SearchPageState(keyWord: this.keyWord);
  }


}

class _SearchPageState extends State<SearchPage>{
  String keyWord ;
  _SearchPageState({this.keyWord="defaultValue"});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton:  FloatingActionButton(
          child: Text("back"),
          onPressed: (){
            Navigator.of(context).pop();
          }),
      appBar: AppBar(
        title: Text("search ${this.keyWord}"),
      ),
      body:
      RaisedButton(
          child: Text("go back"),
          onPressed: (){
        Navigator.of(context).pop();
      }),

    );

  }
}