import 'package:flutter/material.dart';
import 'RouterHandler.dart';
//仿咸鱼按钮
class MyApp7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      onGenerateRoute:
      onGenerateRoute, //当项目中执行Navigator.pushNamed(context,"/GoodsPageForTestingRouter" ,arguments: "3699");时会调用这个参数对应的函数
      theme: ThemeData(primaryColor: Colors.orange),
      home: TextFieldTest(),

    );
  }
}

class TextFieldTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextFieldTestState();
  }

}

class _TextFieldTestState extends State<TextFieldTest>{
  var _userName = TextEditingController();
  var checkboxState = false ;
  var radioValue = "man";
  var switchValue = false ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._userName.text = "初始值";
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      backgroundColor: Color.fromARGB(2, 2, 2, 1),
      appBar: AppBar(
        title: Text("test field usage "),
      ),
      body: Padding(
        padding: EdgeInsets.all(22),
        child: ListView(
          children: <Widget>[
            TextField(),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                hintText: "这是占位符",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              onChanged: (value){
                print(value );
              },
              maxLines: 4,
              decoration: InputDecoration(
                hintText: "这是多行文本框",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              obscureText: true ,//设置成密码框
              decoration: InputDecoration(
                hintText: "密码框",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: this._userName,
              decoration: InputDecoration(
                labelText: "用户名",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              obscureText: true ,//设置成密码框
              decoration: InputDecoration(
                labelText: "密码",
                border: OutlineInputBorder(),
              ),
            ),


            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                hintText: "密码",
                icon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 10,),
            Container(
              width: double.infinity,//填充满父控件
              child: RaisedButton(
                child: Text("get username"),
                onPressed: (){
                  print("获取用户名${this._userName.text}");
                },
              ),
            ),

            Checkbox(
                value: this.checkboxState,
                activeColor: Colors.red,
                onChanged:(state){
                  setState(() {
                    this.checkboxState = state;
                  });
                },
            ),
            SizedBox(height: 10,),
            CheckboxListTile(value: this.checkboxState,
                title: Text("同意用户使用协议"),
                subtitle: Text("想用的话就必须同意用户使用协议"),
                onChanged: (state){
                  setState(() {
                    this.checkboxState = state;
                  });
                },
            ),
            Divider(),
            CheckboxListTile(value: this.checkboxState,
              title: Text("同意用户使用协议"),
              subtitle: Text("想用的话就必须同意用户使用协议"),
              secondary: Icon(Icons.people),
              onChanged: (state){
                setState(() {
                  this.checkboxState = state;
                });
              },
            ),
            Divider(),

            Row(
              children: <Widget>[
                Text("男"),
                Radio(
                  groupValue:this.radioValue,
                  value: "man",
                  onChanged: (state){
                    setState(() {
                      this.radioValue = state;
                      print(state);
                    });
                  },
                ),
                SizedBox(width: 44,),
                Text("女"),
                Radio(
                  value: "woman",
                  groupValue:this.radioValue,
                  onChanged: (state){
                    setState(() {
                      this.radioValue = state;
                      print(state);
                    });
                  },
                ),
                SizedBox(width: 44,),
                Text("保密"),
                Radio(
                  value: "unknown",
                  groupValue:this.radioValue,
                  onChanged: (state){
                    setState(() {
                      this.radioValue = state;
                      print(state);
                    });
                  },
                ),

              ],
            ),

            Column(
              children: <Widget>[
                SizedBox(width: 21,),
                RadioListTile(
                  value: "man",
                  title: Text("男"),
                  subtitle: Text("想用的话就必须同意用户使用协议"),
                  secondary: Icon(Icons.people),
                  groupValue: this.radioValue,
                  selected: this.radioValue == "man",//选中的文字高亮
                  onChanged: (state){
                    setState(() {
                      this.radioValue = state;
                    });
                  },
                ),

                SizedBox(width: 21,),
                RadioListTile(
                value: "woman",
                title: Text("女"),
                subtitle: Text("想用的话就必须同意用户使用协议"),
                secondary: Icon(Icons.people),
                  selected: this.radioValue == "woman",//选中的文字高亮
                groupValue: this.radioValue,
                onChanged: (state){
                  setState(() {
                    this.radioValue = state;
                  });
                },
              ),



              ],
            ),

            SizedBox(height: 22,),
            Container(
              width: 44,
              height: 33,
              child: Switch(

                  value: this.switchValue,
                  onChanged: (value){
                    setState(() {
                      this.switchValue = value ;
                    });
                  }
              ),
            ),


          ],
        ),
      ),
    );
  }
}

class TestSnapets extends StatefulWidget {
  @override
  _TestSnapetsState createState() => _TestSnapetsState();
}

class _TestSnapetsState extends State<TestSnapets> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
