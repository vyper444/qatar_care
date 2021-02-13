import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qatar_care/base/basic_scaffold.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return BasicScaffold(
      child: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceAround,
          children: <Widget>[
            Center(child: Image.asset("images/logo.png")),
            Container(
              height: _height*0.6,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                      text: new TextSpan(
                        style: new TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                        children: [
                          new TextSpan(
                              text: 'Quatar',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 31,
                                  color: Color(0xFF7EAF3C))),
                          new TextSpan(
                              text: 'Care',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Roboto',
                                  fontSize: 31,
                                  color: Color(0xFF832C3A))),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text("'Your Health is Our Priority'",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color(0xff707070))),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
