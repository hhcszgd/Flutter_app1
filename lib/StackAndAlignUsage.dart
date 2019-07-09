import 'package:flutter/material.dart';

class TestStack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 333,
      height: 444,
      color: Colors.purple,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 10,
            left: 10,
            child: Icon(Icons.home, size: 55, color: Colors.green,),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Icon(Icons.search , size: 55, color: Colors.teal,),
          ),

        ],
      ),
    );
  }
}

class TestStack3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 333,
      height: 444,
      color: Colors.purple,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(-1,1),
            child: Icon(Icons.home, size: 55, color: Colors.green,),
          ),
          Align(
            alignment: Alignment(0,1),
            child: Icon(Icons.search , size: 55, color: Colors.teal,),
          ),

        ],
      ),
    );
  }
}

class TestStack2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 333,
      height: 444,
      color: Colors.purple,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Icon(Icons.home, size: 55, color: Colors.green,),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Icon(Icons.search , size: 55, color: Colors.teal,),
          ),

        ],
      ),
    );
  }
}

class TestStack1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 333,
      height: 444,
      color: Colors.purple,
      child: Stack(
        children: <Widget>[
          Icon(Icons.home, size: 55, color: Colors.green,),
          Icon(Icons.search , size: 55, color: Colors.teal,),
        ],
      ),
    );
  }
}


