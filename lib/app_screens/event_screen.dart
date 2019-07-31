import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class EventsFragment extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("Dum-c"),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          title: Text("Paper Presentation"),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          title: Text("Ad Zap"),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          title: Text("Debugging"),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          title: Text("App Development"),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          title: Text("Capture The Flag"),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          title: Text("Gaming"),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          title: Text("On The Spot"),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          title: Text("Memes"),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          title: Text("Photography"),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          title: Text("Treasure Hunt"),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
      ],
    );
  }
}

class RegistrationFragment extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    final EventIdField = TextField(
          obscureText: false,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Event Id",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        );
    final EventRegisterButton = Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: Color(0xff459ada),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            child: Text("REGISTER",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),), 
                onPressed: () {},
          ),
        );
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          children: <Widget>[
            EventIdField,
            SizedBox(
              height: 15.0,
            ),
            EventRegisterButton
          ],
        ),
      )
    );
  }
}

class NotificationFragment extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Text("Notification data");
  }
}

class ProfileFragment extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Text("Profile data"+getName());
  }
  Future<String> getName()
  async {
    SharedPreferences preferences=await SharedPreferences.getInstance();
    String name=preferences.getString('name');
    return name;
  }
}