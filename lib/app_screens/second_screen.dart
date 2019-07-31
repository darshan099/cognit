import 'package:flutter/material.dart';

import 'event_screen.dart';

void main() {
  runApp(MaterialApp(
    title: "Cognit 2k19",
    home: SecondScreenHome(),
  ));
}

class SecondScreenHome extends StatefulWidget
{
  @override
  State<StatefulWidget> createState(){
    return SecondScreen();
  }
}

class SecondScreen extends State<SecondScreenHome> 
{
  int currentIndex=0;
  final List<Widget> bottomNavigationFragments=[
    EventsFragment(),
    RegistrationFragment(),
    NotificationFragment(),
    ProfileFragment()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cognit 2K19"),
        ),
        body: bottomNavigationFragments[currentIndex],
        resizeToAvoidBottomPadding: false,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          fixedColor: Colors.blue,
          onTap: onTabTapped,
          items: [
            BottomNavigationBarItem(
            icon: Icon(Icons.event),
            title: Text("Events")
          ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_activity),
              title: Text("Register"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              title: Text("Notification")
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              title: Text("Profile")
              )
          ]
        ),
    );
  }

  void onTabTapped(int index)
  {
    setState(() {
      currentIndex=index;
    });
  }
}

