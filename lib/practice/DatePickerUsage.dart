import 'package:flutter/material.dart';
import 'RouterHandler.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

//
class MyApp8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        const Locale("zh", "CH"),
        const Locale("en", "US"),
      ],

      debugShowCheckedModeBanner: false,
      onGenerateRoute:
          onGenerateRoute, //当项目中执行Navigator.pushNamed(context,"/GoodsPageForTestingRouter" ,arguments: "3699");时会调用这个参数对应的函数
      theme: ThemeData(primaryColor: Colors.orange),
      home: DateUsageTest(),
    );
  }
}

class DateUsageTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("date picker"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text("to custom date picker"),
                  onPressed: () {
                    print("action");
                    Navigator.pushNamed(context, "/SystemDatePickerPage");
                  },
                ),
                SizedBox(
                  width: 4,
                ),
                RaisedButton(
                  child: Text("to custom date picker"),
                  onPressed: () {
                    print("action");
                    Navigator.pushNamed(context, "/CustomDatePickerPage");
                  },
                ),
                SizedBox(
                  width: 44,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SystemDatePickerPage extends StatefulWidget {
  @override
  _SystemDatePickerPageState createState() => _SystemDatePickerPageState();
}

class _SystemDatePickerPageState extends State<SystemDatePickerPage> {
  var now = DateTime.now();
  var nowFormated = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var timeStamp = now.millisecondsSinceEpoch;
    print("现在时间 : ${now}"); //2019-07-17 14:41:42.484383
    //date_formate 库使用方法: https://pub.dev/packages/date_format#-readme-tab-
    nowFormated = formatDate(
        now, [yyyy, "年", mm, "月", dd, "日", HH, "时", nn, "分", ss, "秒"]);
    print("现在时间 : ${nowFormated}"); //
    print("现在时间戳 : ${timeStamp}"); //1563345702484 毫秒 , 要转换成秒就除以1000
    print(
        "反转换现在时间 : ${DateTime.fromMillisecondsSinceEpoch(timeStamp)}"); //2019-07-17 14:41:42.484
    //日期格式化需借助第三方库

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("system date picker"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              //相当于UIControl
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
//                  Text(formatDate(now, [yyyy,"年",mm,"月",dd,"日" , HH ,"时",nn,"分",ss,"秒"])),
                  Text(nowFormated),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
              onTap: () {
                _showSystemDatePicker();
              },
            ),
            InkWell(
              //相当于UIControl
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
//                  Text(formatDate(now, [yyyy,"年",mm,"月",dd,"日" , HH ,"时",nn,"分",ss,"秒"])),
                  Text(TimeOfDay.now().format(context)),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
              onTap: () {
                _showSystemTimePicker();
              },
            ),
          ],
        ),
      ),
    );
  }

//异步方法一 , 通过Future获取返回值 , 再调用then();方法取出值
  /*
  _showSystemDatePicker(){
    var f = showDatePicker(//系统自带的方法 , 这个方法返回一个异步的数据类型Future
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2001),
        lastDate: DateTime(2200),
    );
    f.then((result){
      print(result);
    }
    );
  }
*/
  //异步方法二 (async 和 await 结合使用)
  _showSystemDatePicker() async {
    var result = await showDatePicker(
        //系统自带的方法 ,等待执行结果,并赋值给result变量,再往下执行程序
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2001),
        lastDate: DateTime(2200),
        locale: Locale(
          "zh",
        ));
    print(result);
  }

//异步方法一 , 通过Future获取返回值 , 再调用then();方法取出值
  /*
  _showSystemTimePicker(){
    showTimePicker(
        context: context,
        initialTime: TimeOfDay.now()
    ).then((result){
      print(result );
    });
  }
*/
  //异步方法二 (async 和 await 结合使用)
  _showSystemTimePicker() async {
    var result = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    print(result.format(context));
  }
}

class CustomDatePickerPage extends StatefulWidget {
  @override
  _CustomDatePickerPageState createState() => _CustomDatePickerPageState();
}

class _CustomDatePickerPageState extends State<CustomDatePickerPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _dateTime = DateTime.now();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("custom date picker"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              //相当于UIControl
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
//                  Text(formatDate(now, [yyyy,"年",mm,"月",dd,"日" , HH ,"时",nn,"分",ss,"秒"])),
                  Text(formatDate(
        _dateTime, [yyyy, "年", mm, "月", dd, "日", HH, "时", nn, "分", ss, "秒"])),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
              onTap: () {
                _showCustomDatePicker();
              },
            ),
            InkWell(
              //相当于UIControl
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                 Text(formatDate(_dateTime, [yyyy,"年",mm,"月",dd,"日" , HH ,"时",nn,"分",ss,"秒"])),
                  // Text(TimeOfDay.now().format(context)),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
              onTap: () {
                _showCustomTimePicker();
              },
            ),
          ],
        ),
      ),
    );
  }
DateTime _dateTime;
  _showCustomDatePicker() {
    print("show custom date picker");
    DatePicker.showDatePicker(
      context,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
        confirm: Text('确定定', style: TextStyle(color: Colors.red)),
        cancel: Text('取消消', style: TextStyle(color: Colors.cyan)),
      ),
      minDateTime: DateTime.parse("2009-05-05"),
      maxDateTime: DateTime.parse("2022-02-02"),
      initialDateTime: _dateTime,
      dateFormat: "yyyy-MMMM-dd",
      locale: DateTimePickerLocale.zh_cn,
      onCancel: () {
        debugPrint('onCancel');
      },
      onChange: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
    );
  }

  _showCustomTimePicker() {
    print("show custom time picker");
    DatePicker.showDatePicker(
      context,
      minDateTime: DateTime.parse("2010-01-10"),
      maxDateTime: DateTime.parse("2025-12-12"),
      initialDateTime: DateTime.now(),
      dateFormat: 'yyyy年M月d日    EEE,H时:m分',
      locale: DateTimePickerLocale.zh_cn,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
      ),
      pickerMode: DateTimePickerMode.datetime, // show TimePicker
      onCancel: () {
        debugPrint('onCancel');
      },
      onChange: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
    );
  }
}

/*
系统控件实现国际化步骤
*step1
在配置文件pubspec.yaml中增加
dependencies:
  flutter:
    sdk: flutter
    # guo ji hua
  flutter_localizations:
    sdk: flutter
*step2
导入国际化库
    import 'package:flutter_localizations/flutter_localizations.dart';
并在MaterialApp中增加


localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
supportedLocales: [
        const Locale("zh","CH"),
        const Locale("en","US"),
      ],
*step3
在需要国际化的控件中,增加locale属性值

showDatePicker(//系统自带的方法 ,等待执行结果,并赋值给result变量,再往下执行程序
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2001),
      lastDate: DateTime(2200),
      locale: Locale("zh",)
);



*/
