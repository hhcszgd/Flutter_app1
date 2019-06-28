import 'package:flutter/material.dart';
class ImageUse extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child:
          //加载网络图片
//      Image.network(
//          "https://pics5.baidu.com/feed/6c224f4a20a44623c3dc1929462f780b0cf3d77e.jpeg?token=cb938a2e9e5a67ea411b10b32429bdc8&s=AD1BA05C42BC95CC165E52930300F09B",
////          alignment: Alignment.bottomRight,
////        color: Colors.red,
////        colorBlendMode: BlendMode.screen,
//          fit: BoxFit.contain,//图片填充模式
//        repeat: ImageRepeat.repeatY,//平铺模式
//      ),
      //加载本地图片
        Image.asset(
            "images/image1.jpeg",
          fit: BoxFit.cover,
        ),//需要提前在项目根目录创建images文件夹及images的子文件夹2.0x,3.0x,4.0x,并分别放上对应分辨率的图片,再配置pubspec.yaml的assets
      width: 300,
      height: 300,
//      alignment: Alignment.bottomRight,
      decoration: BoxDecoration(
        color: Colors.yellow,
      ),
    );
  }
}

class ImageUseWithCircular extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 300,
      height: 300,
//      alignment: Alignment.bottomRight,
      decoration: BoxDecoration(
          color: Colors.yellow,
//        borderRadius: BorderRadius.all(Radius.circular(150))
          borderRadius: BorderRadius.circular(150),
          image: DecorationImage(
              image: NetworkImage("https://pics5.baidu.com/feed/6c224f4a20a44623c3dc1929462f780b0cf3d77e.jpeg?token=cb938a2e9e5a67ea411b10b32429bdc8&s=AD1BA05C42BC95CC165E52930300F09B"),
              fit: BoxFit.cover,
          )
      ),
    );
  }
}


class ImageUseWithCircular2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ClipOval(
        child: Image.network(
            "https://pics5.baidu.com/feed/6c224f4a20a44623c3dc1929462f780b0cf3d77e.jpeg?token=cb938a2e9e5a67ea411b10b32429bdc8&s=AD1BA05C42BC95CC165E52930300F09B",
          width: 300,
          height: 300,
          fit: BoxFit.cover,
        ),

      ),
    );
  }
}