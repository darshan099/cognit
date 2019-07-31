import 'package:flutter/material.dart';
import 'package:myproject/app_screens/second_screen.dart';
import './app_screens/main_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
Future main()
async {
  SharedPreferences preferences=await SharedPreferences.getInstance();
  int init=preferences.getInt("firsttime");
  if(init==1)
  {
    runApp(new MaterialApp(
    home: SecondScreenHome(),
    routes: <String,WidgetBuilder>{
      '/HomeScreen': (BuildContext context)=>new SecondScreenHome()
    },
  ));
  }
  else{
    runApp(new MaterialApp(
    home: FirstScreen(),
    routes: <String,WidgetBuilder>{
      '/HomeScreen': (BuildContext context)=>new SecondScreenHome()
    },
  ));
    SharedPreferences preferences=await SharedPreferences.getInstance();
    init=preferences.setInt("firsttime", 1) as int;
  }
}

class MyFlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "my flutter app",
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
          body: new FirstScreen(),
        )
      );
  }
}