import 'package:flutter/material.dart';
import 'package:myproject/app_screens/second_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';


class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: NameText(),
        ),
    );
  }
}
class NameText extends StatelessWidget{

  final TextEditingController TxtName=new TextEditingController();
  final TextEditingController TxtEmail=new TextEditingController();
  final TextEditingController TxtCollege=new TextEditingController();
  final TextEditingController TxtPhoneNo=new TextEditingController();
  @override
  Widget build(BuildContext context) {
        final NameField = TextField(
          obscureText: false,
          controller: TxtName,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Name",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        );
        final emailField = TextField(
          obscureText: false,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Email",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        );
        final CollegeName = TextField(
          obscureText: false,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "College Name",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        );
         final RegisterButton = Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: Color(0xff459ada),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () async{
              SharedPreferences preferences=await SharedPreferences.getInstance();
              preferences.setString('name', TxtName.text.toString());
              preferences.setString('college', TxtCollege.text.toString());
              preferences.setString('email', TxtEmail.text.toString());
              preferences.setString('phone', TxtPhoneNo.text.toString());

              Navigator.of(context).pushReplacementNamed('/HomeScreen');
            },
            child: Text("REGISTER",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
          ),
        );
        final ContactNo = TextField(
          obscureText: false,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Phone No",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        );
        final Note= Text("Note: After Registering Make Sure You Don't Uninstall The Application Since All Your Progress Will Be Lost And You Won't Be Able To Continue Your Events.");
        return Scaffold(
          resizeToAvoidBottomPadding: false,
          body: Center(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Text("COGNIT 2K19", style: TextStyle(fontSize: 20.0,fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),),
                    SizedBox(height: 45.0),
                    NameField,
                    SizedBox(height: 15.0),
                    emailField,
                    SizedBox(height: 15.0),
                    CollegeName,
                    SizedBox(
                      height: 15.0,
                    ),
                    ContactNo,
                    SizedBox(
                      height: 15.0,
                    ),
                    Note,
                    SizedBox(
                      height: 15.0,
                    ),
                    RegisterButton,
                    SizedBox(
                      height: 15.0,
                    ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
  }
}
