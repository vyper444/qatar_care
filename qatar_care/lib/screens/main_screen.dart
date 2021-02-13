import 'package:flutter/material.dart';
import 'package:qatar_care/base/basic_scaffold.dart';

import 'guest_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
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
              padding:EdgeInsets.only(left:20,right:20),
              width: double.infinity,
              height: _height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.list,
                        color: Colors.white,
                        size: 25,
                      ),
                      Text("  Guest",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: _fontstyles,
                              fontSize: 16,
                              color: Color(0xffFFFFFF))),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.add_location,
                    color: Colors.white,
                    size: 25,
                  ),
                ],
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
                child: GuestScreen(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
