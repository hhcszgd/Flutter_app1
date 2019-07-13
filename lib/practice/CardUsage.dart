import 'package:flutter/material.dart';


class CardUsage extends StatelessWidget{
  
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: listData.map((item){
        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Image.network(item["imageUrl"]),
              ListTile(
                leading:
//                ClipOval(
//
//                  child: Image.network("https://www.itying.com/images/flutter/1.png",fit: BoxFit.cover,width: 44,height: 44,),
//                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(item["imageUrl"]),
                ),
                title: Text(item["title"],maxLines: 1,overflow: TextOverflow.ellipsis,),
                subtitle: Text(item["author"],maxLines: 1,overflow: TextOverflow.ellipsis,),
              ),
            ],
          ),


        );
      }).toList()
    );
  }

  List listData = [
    {
      "title": "thtie 1",
      "author": "author 1",
      "imageUrl": "https://www.itying.com/images/flutter/1.png"
    },
    {
      "title": "thtie 2",
      "author": "author 2",
      "imageUrl": "https://www.itying.com/images/flutter/2.png"
    },
    {
      "title": "thtie 3",
      "author": "author 3",
      "imageUrl": "https://www.itying.com/images/flutter/3.png"
    },
    {
      "title": "thtie 4",
      "author": "author 4",
      "imageUrl": "https://www.itying.com/images/flutter/4.png"
    },
    {
      "title": "thtie 5",
      "author": "author 5",
      "imageUrl": "https://www.itying.com/images/flutter/5.png"
    },
    {
      "title": "thtie 6",
      "author": "author 6",
      "imageUrl": "https://www.itying.com/images/flutter/6.png"
    },
    {
      "title": "thtieooooooooooooooooooooooooooooooooooooooo7777",
      "author": "author 7",
      "imageUrl": "https://pics5.baidu.com/feed/6c224f4a20a44623c3dc1929462f780b0cf3d77e.jpeg?token=cb938a2e9e5a67ea411b10b32429bdc8&s=AD1BA05C42BC95CC165E52930300F09B"
    },
  ];
}


class CardUsage2 extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Image.network("https://www.itying.com/images/flutter/1.png"),
              ListTile(
                leading:
//                ClipOval(
//
//                  child: Image.network("https://www.itying.com/images/flutter/1.png",fit: BoxFit.cover,width: 44,height: 44,),
//                ),
                CircleAvatar(
                  backgroundImage: NetworkImage("https://www.itying.com/images/flutter/1.png"),
                ),
                title: Text("张三"),
                subtitle: Text("张三家的地址是故宫后院,很热闹",maxLines: 1,overflow: TextOverflow.ellipsis,),
              ),
            ],
          ),

        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Image.network("https://www.itying.com/images/flutter/1.png"),
              ListTile(
                leading:
//                ClipOval(
//
//                  child: Image.network("https://www.itying.com/images/flutter/1.png",fit: BoxFit.cover,width: 44,height: 44,),
//                ),
                CircleAvatar(
                  backgroundImage: NetworkImage("https://www.itying.com/images/flutter/1.png"),
                ),
                title: Text("张三"),
                subtitle: Text("张三家的地址是故宫后院,很热闹",maxLines: 1,overflow: TextOverflow.ellipsis,),
              ),
            ],
          ),

        ),
      ],
    );
  }
}

class CardUsage1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("张三"),
                subtitle: Text("张三是一个好人,很好很好的人"),
              ),
              ListTile(
                title: Text("张三家的地址是故宫后院,很热闹"),
              ),
              ListTile(
                title: Text("张三家的床很大很软和也很结实"),
              ),
            ],
          ),

        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("李四"),
                subtitle: Text("李四是一个好人,很好很好的人"),
              ),
              ListTile(
                title: Text("李四家的地址是故宫后院,很热闹"),
              ),
              ListTile(
                title: Text("李四家的床很大很软和也很结实"),
              ),
            ],
          ),

        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("赵四"),
                subtitle: Text("赵四是一个好人,很好很好的人"),
              ),
              ListTile(
                title: Text("赵四家的地址是故宫后院,很热闹"),
              ),
              ListTile(
                title: Text("赵四家的床很大很软和也很结实"),
              ),
            ],
          ),

        ),
      ],
    );
  }
}









/*
* AspectRatio 的作用是根据设置调整子元素child的宽高比
*
* */


class AspectRatioUsage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.yellow,
      width: 333,
      child: AspectRatio(
        aspectRatio: 3/1,
        child: Container( // container的宽度为父控件的(即333)宽度 , 按照比例3:1 , container的高度为屏幕宽度的三分之一
          color: Colors.red,
        ),
      ),

    );
  }
}

class AspectRatioUsage1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AspectRatio(
      aspectRatio: 3/1,
      child: Container( // container的宽度为父控件的宽度(即屏幕宽度) , 按照比例3:1 , container的高度为屏幕宽度的三分之一
        color: Colors.red,
      ),
    );
  }
}