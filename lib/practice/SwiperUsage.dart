import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'RouterHandler.dart';

//
class MyApp9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute:
          onGenerateRoute, //当项目中执行Navigator.pushNamed(context,"/GoodsPageForTestingRouter" ,arguments: "3699");时会调用这个参数对应的函数
      theme: ThemeData(primaryColor: Colors.orange),
      home: SwiperUsage(),
    );
  }
}

class SwiperUsage extends StatefulWidget {
  SwiperUsage({Key key}) : super(key: key);

  _SwiperUsageState createState() => _SwiperUsageState();
}

class _SwiperUsageState extends State<SwiperUsage> {
  List<Map> imgList = [
    {"url": "https://www.itying.com/images/flutter/1.png"},
    {
      "url":
          "https://pics5.baidu.com/feed/6c224f4a20a44623c3dc1929462f780b0cf3d77e.jpeg?token=cb938a2e9e5a67ea411b10b32429bdc8&s=AD1BA05C42BC95CC165E52930300F09B"
    },
    {"url": "https://www.itying.com/images/flutter/3.png"},
    {"url": "https://www.itying.com/images/flutter/4.png"},
    {"url": "https://www.itying.com/images/flutter/5.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("hello swiper"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              // height: 333,
              // width: double.infinity,//屏幕宽度
              child: AspectRatio(
                //设置子控件按比例显示
                aspectRatio: 16 / 9, //子控件显示的比例
                // child: Swiper3(imgList),
                child: Swiper6(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Swiper1 extends StatelessWidget {
  List<Map> imgList;
  Swiper1(this.imgList);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Swiper(
      loop: true, //无限循环
      autoplay: true, //zi dong lun bo
      autoplayDelay: 3000, // lun bo jian ge
      itemBuilder: (BuildContext context, int index) {
        return new Image.network(
          this.imgList[index]["url"],
          // fit: BoxFit.fitWidth,
          fit: BoxFit.fill,
        );
      },
      itemCount: this.imgList.length,
      pagination: new SwiperPagination(),
      control: new SwiperControl(),
    );
  }
}

class Swiper2 extends StatelessWidget {
  List<Map> imgList;
  Swiper2(this.imgList);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Swiper(
        layout: SwiperLayout.CUSTOM,
        customLayoutOption:
            new CustomLayoutOption(startIndex: -1, stateCount: 3)
                .addRotate([-45.0 / 180, 0.0, 45.0 / 180]).addTranslate([
          new Offset(-370.0, -40.0),
          new Offset(0.0, 0.0),
          new Offset(370.0, -40.0)
        ]),
        itemWidth: 300.0,
        itemHeight: 200.0,
        itemBuilder: (context, index) {
          return new Container(
            color: Colors.grey,
            child: new Center(
              child: Image.network(
                this.imgList[index]["url"],
                // fit: BoxFit.fitWidth,
                fit: BoxFit.fill,
              ),
            ),
          );
        },
        itemCount: imgList.length);
  }
}

class Swiper3 extends StatelessWidget {
  List<Map> imgList;
  Swiper3(this.imgList);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return Image.network(
          this.imgList[index]["url"],
          // fit: BoxFit.fitWidth,
          fit: BoxFit.fill,
        );
      },
      itemCount: imgList.length,
      viewportFraction: 0.8,
      scale: 0.9,
    );
  }
}

class Swiper4 extends StatelessWidget {
  List<Map> imgList;
  Swiper4(this.imgList);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return Image.network(
          this.imgList[index]["url"],
          // fit: BoxFit.fitWidth,
          fit: BoxFit.fill,
        );
      },
      itemCount: imgList.length,
      itemWidth: 300.0,
      layout: SwiperLayout.STACK,
    );
  }
}

class Swiper5 extends StatelessWidget {
  List<Map> imgList;
  Swiper5(this.imgList);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return Image.network(
          this.imgList[index]["url"],
          // fit: BoxFit.fitWidth,
          fit: BoxFit.fill,
        );
      },
      itemCount: imgList.length,
      itemWidth: 300.0,
      itemHeight: 400.0,
      layout: SwiperLayout.TINDER,
    );
  }
}

class Swiper6 extends StatelessWidget {
  List<Map> imgList = [
    {"url": "https://www.itying.com/images/flutter/1.png","title":"a"},
    {
      "url":
          "https://pics5.baidu.com/feed/6c224f4a20a44623c3dc1929462f780b0cf3d77e.jpeg?token=cb938a2e9e5a67ea411b10b32429bdc8&s=AD1BA05C42BC95CC165E52930300F09B","title":"b"
    },
    {"url": "https://www.itying.com/images/flutter/3.png","title":"c"},
    {"url": "https://www.itying.com/images/flutter/4.png","title":"d"},
    {"url": "https://www.itying.com/images/flutter/5.png","title":"e"},

    {"url": "https://www.itying.com/images/flutter/3.png","title":"f"},
    {"url": "https://www.itying.com/images/flutter/4.png","title":"g"},
    {"url": "https://www.itying.com/images/flutter/5.png","title":"h"},

    {"url": "https://www.itying.com/images/flutter/3.png","title":"i"},
    {"url": "https://www.itying.com/images/flutter/4.png","title":"j"},
    {"url": "https://www.itying.com/images/flutter/5.png","title":"k"},
  ];
  // Swiper6({this.imgList});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ConstrainedBox(
        child: new Swiper(
          outer: false,
          itemBuilder: (c, i) {
            return new Wrap(
              runSpacing: 6.0,
              children: imgList.map((i) {
                return new SizedBox(
                  width: MediaQuery.of(context).size.width / 5,
                  child: new Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new SizedBox(
                        child: new Container(
                          child: Image.network(
                            i["url"],
                            // fit: BoxFit.fitWidth,
                            fit: BoxFit.fill,
                          ),
                        ),
                        height: MediaQuery.of(context).size.width * 0.12,
                        width: MediaQuery.of(context).size.width * 0.12,
                      ),
                      new Padding(
                        padding: new EdgeInsets.only(top: 6.0),
                        child: new Text("${i["title"]}"),
                      )
                    ],
                  ),
                );
              }).toList(),
            );
          },
          pagination: new SwiperPagination(margin: new EdgeInsets.all(5.0)),
          itemCount: imgList.length,
        ),
        constraints: new BoxConstraints.loose(new Size(410, 170.0)));
  }
}
