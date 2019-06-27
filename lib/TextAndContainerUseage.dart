

import 'package:flutter/material.dart';
class HomePageWithButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: FlatButton(
        child: Text("title"),
        onPressed: (){
          print("printtt");
        },
      ),
    );
  }
}



class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
          child:
          Text(
            "this is co",
            textAlign: TextAlign.right,//居中,居左,还是居右
            style: TextStyle(
                color: Color.fromARGB(125, 255, 0, 0),
                fontSize: 12,
                letterSpacing: -1 ,//字间距
                wordSpacing: -2,//单词之间的间隙
                fontWeight: FontWeight.bold ,//加粗还是正常
                fontStyle: FontStyle.italic, // 斜体
                decoration: TextDecoration.underline,//下划线
                decorationColor: Colors.blue,//文字装饰线(下划线)颜色
                decorationStyle: TextDecorationStyle.dashed//装饰线为虚线
            ),
            overflow: TextOverflow.ellipsis,//可以配合maxLines使用,当文字超出控件时(fade)渐隐还是,(fade)换行,还是(ellipsis)...
            maxLines: 1,
            textScaleFactor: 2,//字体放大两倍
          ),
          width: 333,
          height: 222,
          decoration: BoxDecoration(
              color: Colors.yellow,
              border: Border.all(
                  color: Colors.blue,
                  width: 20
              ),
              borderRadius: BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                    color: Colors.cyan,
                    offset: Offset(3, 5) ,
                    blurRadius:9//虚化程度
                )
              ]

          ),
          margin: EdgeInsets.all(22),//表示当前container与外部其它组件的距离
          padding: EdgeInsets.all(10),//container与边缘child之间的距离
//        transform: Matrix4.translationValues(100, 0, 0),//x方向位移100
//        transform: Matrix4.rotationZ(0.2),//沿z轴旋转
//        transform: Matrix4.diagonal3Values(1.2, 1, 1),//沿X轴放大1.2倍
          alignment: Alignment.bottomRight,//居右下

//        color: Colors.red,//这个参数和decoration只能传其中一个
        )
    );
  }
}
