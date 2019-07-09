import 'package:flutter/material.dart';

/*
 * 1垂直列表
 * 2垂直图文列表
 * 3水平列表
 * 4动态列表
 * 5矩阵式列表
 * */


// 在flutter中 , 并不是所有的widget组件都有padding属性 , 没有padding属性的组件如果要实现相应的效果 , 可借助 Padding组件
class TestPadding extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
        child: Image.network("https://www.itying.com/images/flutter/2.png",),
    );
  }
}
// * 5矩阵式列表
// 2 通过GridVew.builder 实现网格布局
class TestGridView extends StatelessWidget {
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
      "title": "thtie ooooooooooooooooooooooooooooooooooooooo7777",
      "author": "author 7",
      "imageUrl": "https://pics5.baidu.com/feed/6c224f4a20a44623c3dc1929462f780b0cf3d77e.jpeg?token=cb938a2e9e5a67ea411b10b32429bdc8&s=AD1BA05C42BC95CC165E52930300F09B"
    },
  ];


  Widget _getitem(context , index) {
      return Container(
          alignment: Alignment.center,
//            height: 222,//当container在gridView中时,设置宽高是没用的
//            width: 111,
          decoration: BoxDecoration(
              border: Border.all(width: 1,color: Colors.green)
          ),
          child: Column(
            children: <Widget>[
              Image.network(this.listData[index]["imageUrl"]),
              SizedBox(height: 10,),//设置两个控件的间距
              Text(
                this.listData[index]["title"],
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  backgroundColor: Colors.blueGrey,
                  color: Colors.white,

                  fontSize: 17,
                ),
              ),


            ],
          )
      );


  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(//没用GridView.count灵活好用
//        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3) ,//这样指定列数
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 20, //主轴间隙 , 如果滚动方向为水平,则为水平方向两个格之间的距离 ,如果滚动方向为垂直,则为垂直方向两个格之间的距离
          crossAxisSpacing: 10,    //与主轴交叉方向的格间距
          childAspectRatio: 0.9,
        ) ,//这样设置详细参数
        itemCount: this.listData.length,
        itemBuilder: this._getitem
    );
  }


}


// 1 通过GridView.count 实现网格布局
class TestGridView2 extends StatelessWidget {
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
      "title": "thtie ooooooooooooooooooooooooooooooooooooooo7777",
      "author": "author 7",
      "imageUrl": "https://pics5.baidu.com/feed/6c224f4a20a44623c3dc1929462f780b0cf3d77e.jpeg?token=cb938a2e9e5a67ea411b10b32429bdc8&s=AD1BA05C42BC95CC165E52930300F09B"
    },
  ];


  List<Widget> _childrenText() {
    var list = this.listData.map((element) {
      return Container(
          alignment: Alignment.center,
//            height: 222,//当container在gridView中时,设置宽高是没用的
//            width: 111,
          decoration: BoxDecoration(
            border: Border.all(width: 1,color: Colors.green)
          ),
          child: Column(
            children: <Widget>[
              Image.network(element["imageUrl"]),
              SizedBox(height: 10,),//设置两个控件的间距
              Text(
                element['title'],
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    backgroundColor: Colors.blueGrey,
                    color: Colors.white,

                  fontSize: 17,
                ),
              ),


            ],
          )
      );
    });


    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 3,
      children: this._childrenText(),
      //直接设置子widget的width和height是没用的,需要设置childAspectRatio
//      childAspectRatio: 0.5,//简介改变子widget的宽高,默认值是1 , 值为0.5时表示子widget的宽高比为1:2
      scrollDirection: Axis.vertical,
      //滚动方向
      mainAxisSpacing: 20,
      //主轴间隙 , 如果滚动方向为水平,则为水平方向两个格之间的距离 ,如果滚动方向为垂直,则为垂直方向两个格之间的距离
      crossAxisSpacing: 10,
      //与主轴交叉方向的格间距
      padding: EdgeInsets.all(5),

    );
  }


}






// GridView常用属相
// 类型名称                      类型                            说明
//scrollDirection              Axis                        滚动方向
// padding                 EdgeInsetsGeometry              内边距
// resolve                   bool                          组件反向排序
// crossAxisSpacing          double               水平子Widget之间间距
// mainAxisSpacing           double               垂直子Widget之间间距
//crossAxisCount              int                 一行的widget数量(列数)
//childAspectRatio           double               子widget宽高比例
//children                                        <Widget>[]
//gridDelegate      SliverGridDelegateWithFixedCrossAxisCount(常用) 控制布局主要在GridView.builder
//                  SliverGridDelegateWithMaxCrossAxisExtent          里面

class TestGridView1 extends StatelessWidget{
  List<Widget> _childrenText(){

    List<Widget> list = List() ;

        for (var i = 0 ; i < 32 ; i ++){
          var container = Container(
            color: Colors.blue,
            alignment: Alignment.center,
//            height: 222,//当container在gridView中时,设置宽高是没用的
//            width: 111,
            child: Text(
              "test gridview $i",
              style: TextStyle(
                  backgroundColor: Colors.blueGrey,
                color: Colors.white
              ),
            ),

          );
          list.add(container);
        }

        return list  ;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 3 ,
      children: this._childrenText(),//直接设置子widget的width和height是没用的,需要设置childAspectRatio
      childAspectRatio: 0.5,//简介改变子widget的宽高,默认值是1 , 值为0.5时表示子widget的宽高比为1:2
      scrollDirection: Axis.vertical,//滚动方向
      mainAxisSpacing: 20,//主轴间隙 , 如果滚动方向为水平,则为水平方向两个格之间的距离 ,如果滚动方向为垂直,则为垂直方向两个格之间的距离
      crossAxisSpacing: 10,//与主轴交叉方向的格间距
      padding: EdgeInsets.all(5),

    );

  }


}







// * 4动态列表


//动态图文列表(通过listViewBuilder)
class TestListView8 extends StatelessWidget{



    List listData = [
      {"title" : "thtie 1","author": "author 1" , "imageUrl":"https://www.itying.com/images/flutter/1.png"},
      {"title" : "thtie 2","author": "author 2" , "imageUrl":"https://www.itying.com/images/flutter/2.png"},
      {"title" : "thtie 3","author": "author 3" , "imageUrl":"https://www.itying.com/images/flutter/3.png"},
      {"title" : "thtie 4","author": "author 4" , "imageUrl":"https://www.itying.com/images/flutter/4.png"},
      {"title" : "thtie 5","author": "author 5" , "imageUrl":"https://www.itying.com/images/flutter/5.png"},
      {"title" : "thtie 6","author": "author 6" , "imageUrl":"https://www.itying.com/images/flutter/6.png"},
    ];

  /*

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: listData.length,
        itemBuilder: (context , index ){//此处可以抽取出一个函数
          print(context);
          var cell = ListTile(
            leading:  Image.network(listData[index]["imageUrl"]),
            title: Text(listData[index]["title"]),
            subtitle: Text(listData[index]["author"]),
          );
          return cell ;
    }
    );
  }
  */

  //抽取itemBuilder
    Widget _listData(context , index ){
      print(context);
      var cell = ListTile(
        leading:  Image.network(listData[index]["imageUrl"]),
        title: Text(listData[index]["title"]),
        subtitle: Text(listData[index]["author"]),
      );
      return cell ;
    }
    @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return ListView.builder(
          itemCount: listData.length,
          itemBuilder: this._listData //注意 , 这里是函数赋值,不是加括号调用
      );

    }    


}





//动态图文列表
class TestListView7 extends StatelessWidget{




  //自定义listView的元素的数组
  List<Widget> _getData(){//加下划线代表私有方法
    List listData = [
      {"title" : "thtie 1","author": "author 1" , "imageUrl":"https://www.itying.com/images/flutter/1.png"},
      {"title" : "thtie 2","author": "author 2" , "imageUrl":"https://www.itying.com/images/flutter/2.png"},
      {"title" : "thtie 3","author": "author 3" , "imageUrl":"https://www.itying.com/images/flutter/3.png"},
      {"title" : "thtie 4","author": "author 4" , "imageUrl":"https://www.itying.com/images/flutter/4.png"},
      {"title" : "thtie 5","author": "author 5" , "imageUrl":"https://www.itying.com/images/flutter/5.png"},
      {"title" : "thtie 6","author": "author 6" , "imageUrl":"https://www.itying.com/images/flutter/6.png"},
    ];
    var ll = listData.map((dict){
//      var cell = dict["title"];
      var cell = ListTile(

        leading:  Image.network(dict["imageUrl"]),
        title: Text(dict["title"]),
        subtitle: Text(dict["author"]),
      );
      return cell ;
    });
//    print(ll);//(ListTile, ListTile, ListTile, ListTile, ListTile, ListTile)
//    print(ll.toList());// [ListTile, ListTile, ListTile, ListTile, ListTile, ListTile]
    return ll.toList() ;

  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(//通过在listview外面加一层container来限制里面的cell自动扩展行高或行宽
//      width: 333,
      height: 333,
      color: Colors.yellow,
      child: ListView(

        children:this._getData() ,
        padding: EdgeInsets.all(12),

        scrollDirection: Axis.vertical,
      ),
    );
  }
}








//动态图文列表
class TestListView6 extends StatelessWidget{


  //自定义listView的元素的数组
  List<Widget> _getData(){//加下划线代表私有方法

//    List<Widget> list = List<ListTile>();
//    List<Widget> list = new List();
    List<Widget> list = List();
    for(var i = 0 ; i < 20 ; i++){
      var j = i + 1 ;
      var cell = ListTile(
        title: Text("this is title of teableViewCell \$i $j"
        ),

      );
      list.add(cell);
    }
        return list ;

    /*
    return [
      ListTile(
        title: Text("this is title of tableviewcell"),
      ),
      ListTile(
        title: Text("this is title of tableviewcell"),
      ),
      ListTile(
        title: Text("this is title of tableviewcell"),
      ),
      ListTile(
        title: Text("this is title of tableviewcell"),
      ),
      ListTile(
        title: Text("this is title of tableviewcell"),
      ),
    ];
    */
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(//通过在listview外面加一层container来限制里面的cell自动扩展行高或行宽
//      width: 333,
      height: 333,
      color: Colors.yellow,
      child: ListView(

        children:this._getData() ,
        padding: EdgeInsets.all(12),

        scrollDirection: Axis.vertical,
      ),
    );
  }
}









// * 1垂直列表
// * 2垂直图文列表
// * 3水平列表


//listview再嵌套listview
class TestListView5 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(//通过在listview外面加一层container来限制里面的cell自动扩展行高或行宽
      width: 333,
      height: 333,
      color: Colors.purple,
      child: ListView(

        children: <Widget>[
          Container(
            height: 122,
            width: 222,
            color: Colors.red,
            alignment: Alignment.center,
            child: Text("image0"),
          ),
          Container(

            height: 122,
            width: 222,
            color: Colors.green,
            alignment: Alignment.center,
            child: ListView(
              children: <Widget>[

                Container(
                  height: 122,
                  width: 122,
                  color: Colors.red,
                  alignment: Alignment.center,
                  child: Text("subimage0"),
                ),
                Container(

                  height: 122,
                  width: 122,
                  color: Colors.green,
                  alignment: Alignment.center,
                  child: Text("subimage1"),
                ),
                Container(

                  height: 122,
                  width: 122,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: Text("subimage2"),
                ),

              ],
              scrollDirection: Axis.horizontal,
            ),
          ),
          Container(

            height: 122,
            width: 222,
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text("image2"),
          ),
          Container(

            height: 122,
            width: 222,
            color: Colors.orange,
            alignment: Alignment.center,
            child: Text("image3"),
          ),
          Container(

            height: 122,//当listview为水平滚动时,这个属性无效,如果把listview放在一个container中可以解决这种问题
            width: 222,//当listview为垂直滚动时,这个属性无效,
            color: Colors.pink,
            alignment: Alignment.center,
            child: Text("image4"),
          ),
          Container(

            height: 122,
            width: 222,
            color: Colors.yellow,
            alignment: Alignment.center,
            child: Text("image5"),
          ),
        ],
        padding: EdgeInsets.all(12),

        scrollDirection: Axis.horizontal,
      ),
    );
  }
}




//外套container的图文列表
class TestListView4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Container(
          height: 122,
          width: 222,
          color: Colors.red,
          alignment: Alignment.center,
          child: Text("image0"),
        ),
        Container(

          height: 122,
          width: 222,
          color: Colors.green,
          alignment: Alignment.center,
          child: Text("image1"),
        ),
        Container(

          height: 122,
          width: 222,
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text("image2"),
        ),
        Container(

          height: 122,
          width: 222,
          color: Colors.orange,
          alignment: Alignment.center,
          child: Text("image3"),
        ),
        Container(

          height: 122,//当listview为水平滚动时,这个属性无效,如果把listview放在一个container中可以解决这种问题
          width: 222,//当listview为垂直滚动时,这个属性无效,
          color: Colors.pink,
          alignment: Alignment.center,
          child: Text("image4"),
        ),
        Container(

          height: 122,
          width: 222,
          color: Colors.yellow,
          alignment: Alignment.center,
          child: Text("image5"),
        ),
      ],
      padding: EdgeInsets.all(12),

      scrollDirection: Axis.horizontal,
    );
  }
}





//垂直图文列表
class TestListView3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
      Container(
      height: 22,
      alignment: Alignment.center,
      child: Text("image0"),
    ),
        Image.network("https://www.itying.com/images/flutter/1.png"),
        Container(
          height: 22,
        alignment: Alignment.center,
        child: Text("image1"),
        ),
        Image.network("https://www.itying.com/images/flutter/2.png"),
        Container(
          height: 22,
          alignment: Alignment.center,
          child: Text("image2"),
        ),
        Image.network("https://www.itying.com/images/flutter/3.png"),
        Container(
          height: 22,
          alignment: Alignment.center,
          child: Text("image3"),
        ),
        Image.network("https://www.itying.com/images/flutter/4.png"),
        Container(
          height: 22,
          alignment: Alignment.center,
          child: Text("image4"),
        ),
        Image.network("https://www.itying.com/images/flutter/5.png"),
        Container(
          height: 22,
          alignment: Alignment.center,
          child: Text("image5"),
        ),
        Image.network("https://www.itying.com/images/flutter/6.png"),
      ],
      padding: EdgeInsets.all(12),

      scrollDirection: Axis.vertical,
    );
  }
}

//垂直图文列表
class TestListView2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.access_alarm),
          title: Text("hello world ",
            style: TextStyle(fontSize: 29),
          ),
          subtitle: Text("xxxxxmmmmmmmxxxxxxx"),
        ),
        ListTile(
          leading: Icon(Icons.access_alarm,color: Colors.red,),
          title: Text("hello world "),
          subtitle: Text("xxxxxx;;;;;;;xxxxxx"),
        ),
        ListTile(
          leading: Icon(Icons.access_alarm,size: 55,),
          title: Text("hello world "),
          subtitle: Text("xxxyyyyyyyyyyyxxxxxxxxx"),
        ),
        ListTile(
          leading: Image.asset("images/image1.jpeg" ,),
          title: Text("hello world "),
          subtitle: Text("xxtttttttttttttxxxxxxxxxx"),
        ),
        ListTile(
          leading: Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561712683072&di=88ce5a9e9a8b3d0c7487495ecaa36f02&imgtype=0&src=http%3A%2F%2Fs04.lmbang.com%2FM00%2FB8%2F4C%2FecloD1vgIX2AX90tAAB955RQ4Eo211.jpg" ,),
          title: Text("hello world "),
          subtitle: Text("xxxxxdddyyyyyyyyyyyyyyyyyyyyyyyyyysdfgsddsagtdddddddddxxxxxxx"),
          trailing: Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561712581797&di=14b99b6a1b6ea61ad85e922f0dd8111e&imgtype=0&src=http%3A%2F%2Fs06.lmbang.com%2FM00%2FC0%2F25%2FecloA1vpDcCANN_uABSouKqyfS4053.gif"),

        ),
        ListTile(
          trailing: Icon(Icons.access_alarm,size: 25,),
          title: Text("hello world "),
          subtitle: Text("xxxxxddddddddddddxxxxxxx"),
        ),
      ],
      padding: EdgeInsets.all(12),
      scrollDirection: Axis.vertical,
    );
  }
}
//垂直文字列表
class TestListView0 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("hello world ",
            style: TextStyle(fontSize: 29),
          ),
          subtitle: Text("xxxxxmmmmmmmxxxxxxx"),
        ),
        ListTile(
          title: Text("hello world "),
          subtitle: Text("xxxxxx;;;;;;;xxxxxx"),
        ),
        ListTile(
          title: Text("hello world "),
          subtitle: Text("xxxyyyyyyyyyyyxxxxxxxxx"),
        ),
        ListTile(
          title: Text("hello world "),
          subtitle: Text("xxtttttttttttttxxxxxxxxxx"),
        ),
        ListTile(
          title: Text("hello world "),
          subtitle: Text("xxxxxddddddddddddxxxxxxx"),
        ),
      ],
      padding: EdgeInsets.all(12),
      scrollDirection: Axis.vertical,
    );
  }
}


class ClassA extends StatelessWidget{
  // 构造函数
  ClassA(){
    //构造函数体
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}