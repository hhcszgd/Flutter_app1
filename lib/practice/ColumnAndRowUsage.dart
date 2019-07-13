import 'package:flutter/material.dart';




class Practice extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child:Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              height: 111,
              color: Colors.black,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              height: 111,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Container(
//                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        height: 111,
                        color: Colors.yellow,
                      ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    height: 111,
                    width: 111,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
//                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          height: 45,
                          color: Colors.red,
                        ),
                        Container(
//                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          height: 45,
                          color: Colors.blue,
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );



//    );
  }
}


class TestExpanded extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        //这样代表 , 左侧按照IconContainer设置的宽度 , 剩下的让Expanded填充 , flex必须为1
        IconContainer( Icons.search , color: Colors.green , size: 55,),
        Expanded(
          flex: 1,
          child: IconContainer( Icons.search , color: Colors.yellow , size: 55,),
        ),

      ],
    );
  }
}


class TestExpanded1 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1, //父控件平均分成 所有flex 之和份(即 1+3 份) , 这里的1 代表其中一份的长度
            child: IconContainer( Icons.search , color: Colors.yellow , size: 55,),
        ),
        Expanded(
          flex: 3, //父控件平均分成 所有flex 之和分 , 这里的1 代表其中一份的长度
          child: IconContainer( Icons.search , color: Colors.green , size: 55,),
        ),
      ],
    );
  }
}


class TestColumn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 300,
      height: 400,
      color: Colors.yellow,
      child: Column(

//        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          IconContainer( Icons.search , color: Colors.yellow , size: 55,),
          IconContainer( Icons.home , color: Colors.black , size: 22,),
          IconContainer( Icons.map , color: Colors.green , size: 33,),
          IconContainer( Icons.add, color: Colors.blue , size: 44,),
          IconContainer( Icons.list, color: Colors.lightGreenAccent , size: 55,),

        ],
      ),

    );
  }
}


class TestRow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 400,
      height: 300,
      color: Colors.yellow,
      child: Row(
//      mainAxisAlignment: MainAxisAlignment.center,//水平居中
//      mainAxisAlignment: MainAxisAlignment.end,//水平居右
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,//均匀离散型排布
//        crossAxisAlignment: CrossAxisAlignment.start,//整体相对于父控件的排布,(居于父控件顶部)
//        crossAxisAlignment: CrossAxisAlignment.end,//整体相对于父控件的排布,(居于父控件底部)
        crossAxisAlignment: CrossAxisAlignment.stretch,//整体相对于父控件的排布,(垂直方向充满父控件)
        children: <Widget>[
          IconContainer( Icons.search , color: Colors.yellow , size: 55,),
          IconContainer( Icons.home , color: Colors.black , size: 22,),
          IconContainer( Icons.map , color: Colors.green , size: 33,),
          IconContainer( Icons.add, color: Colors.blue , size: 44,),
          IconContainer( Icons.list, color: Colors.lightGreenAccent , size: 55,),

        ],

      ),

    );
  }
}

class IconContainer extends StatelessWidget {
  double size = 33;
  Color color = Colors.red ;
  IconData icon ;
  //构造方法
  //小括号里为参数 , 小括号里的大括号代表可选参数
  IconContainer(this.icon,{this.color,this.size});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 71,
      height: 71,
      color: this.color,
      child: Center(
        child: Icon(this.icon,size: this.size ,color: Colors.white,),
      ),
    );
  }
}
