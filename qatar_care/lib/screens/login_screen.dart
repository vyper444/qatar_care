import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qatar_care/base/basic_scaffold.dart';
import 'package:qatar_care/main.dart';

import 'Clients/clients_screen.dart';
import 'Guest/service_1.dart';
import 'Staff/staff_screen.dart';
import 'main_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget Textstyle(String text, Color color, FontWeight weight) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        text,
        style: TextStyle(
            fontWeight: weight,
            fontFamily: 'Roboto',
            fontSize: 14,
            color: color),
      ),
    );
  }

  bool guest=true;
  bool client=false;
  bool staff=false;

  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    final _fontstyles = 'Roboto sans-serif';
    return BasicScaffold(
      child: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        width: double.infinity,
        color: Color(0xFF7EAF3C),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: _height * 0.1,
              child: Center(
                child: Text("Login",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: _fontstyles,
                        fontSize: 16,
                        color: Color(0xffFFFFFF))),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                width: double.infinity,
                height: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            "WELCOME TO",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: _fontstyles,
                                fontSize: 14,
                                color: Color(0xFF7EAF3C)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 40),
                          child: RichText(
                            text: new TextSpan(
                              style: new TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                              ),
                              children: [
                                new TextSpan(
                                    text: 'Quatar',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: _fontstyles,
                                        fontSize: 40,
                                        color: Color(0xFF7EAF3C))),
                                new TextSpan(
                                    text: 'Care',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: _fontstyles,
                                        fontSize: 40,
                                        color: Color(0xFF832C3A))),
                              ],
                            ),
                          ),
                        ),
                        Textstyle(
                            "LOGIN WITH", Color(0xFF707070), FontWeight.bold),
                        Padding(
                          padding: const EdgeInsets.only(top: 30, bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Material(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(22.0)),
                                color: guest == true
                                    ? Color(0xFF7EAF3C)
                                    : Color(0xFFF0F0F0),
                                clipBehavior: Clip.antiAlias,
                                child: MaterialButton(
                                    minWidth: _width * 0.4,
                                    onPressed: () {
                                      setState(() {
                                        guest = true;
                                        client = false;
                                        staff = false;
                                      });
                                    },
                                    textColor: guest == true
                                        ? Colors.white
                                        : Color(0xFF707070),
                                    child: Text('GUEST')),
                              ),
                              Material(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(22.0)),
                                color: client == true
                                    ? Color(0xFF7EAF3C)
                                    : Color(0xFFF0F0F0),
                                clipBehavior: Clip.antiAlias,
                                child: MaterialButton(
                                    minWidth: _width * 0.4,
                                    onPressed: () {
                                      setState(() {
                                        guest = false;
                                        client = true;
                                        staff = false;
                                      });
                                    },
                                    textColor: client == true
                                        ? Colors.white
                                        : Color(0xFF707070),
                                    child: Text('CLIENT')),
                              ),
                            ],
                          ),
                        ),
                        Material(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.0)),
                          color: staff == true
                              ? Color(0xFF7EAF3C)
                              : Color(0xFFF0F0F0),
                          clipBehavior: Clip.antiAlias,
                          child: MaterialButton(
                              minWidth: double.infinity,
                              onPressed: () {
                                setState(() {
                                  guest = false;
                                  client = false;
                                  staff = true;
                                });
                              },
                              textColor: staff == true
                                  ? Colors.white
                                  : Color(0xFF707070),
                              child: Text('STAFF')),
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                                top: 50, left: 20, right: 20, bottom: 20),
                            child: Column(
                              children: [
                                Textstyle('Enter Mobile No', Color(0xFF832C3A),
                                    FontWeight.normal),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 30),
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    onChanged: (text) {},
                                  ),
                                ),
                                Textstyle('Password', Color(0xFF832C3A),
                                    FontWeight.normal),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 50),
                                  child: TextField(
                                    obscureText: true,
                                    onChanged: (text) {
                                      if (text == "1234") {
                                        Widget Newpage;
                                        if (guest == true) {
                                          Newpage = ServiceScreenOne();
                                        } else if (client == true) {
                                          Newpage = ClientScreen();
                                        } else {
                                          Newpage = StaffScreen();
                                        }
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    MainScreen(
                                                      pageName: Newpage,
                                                    )));
                                      }
                                    },
                                  ),
                                ),
                                Textstyle('Resend O T P ?', Color(0xFF7EAF3C),
                                    FontWeight.normal),
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
