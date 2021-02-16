import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qatar_care/base/basic_scaffold.dart';

import 'guest2.dart';
import 'guest_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex=2;
  Widget pages=GuestScreen();
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    final _fontstyles = 'Roboto sans-serif';
    return BasicScaffold(
      child:Container(
        color: Color(0xFF7EAF3C),
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              color: Color(0xFF7EAF3C),
              padding: EdgeInsets.only(left: 20, right: 20,),
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
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                    ),
                    width: double.infinity,
                    height: double.infinity,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          pages,
                          Container(
                            width: double.infinity,
                            height: _height * 0.15,
                            color: Color(0xFF7EAF3C),
                            child: Text(
                              "Copyright ©2018 QuatarCare. All Rights Reserved",
                              style: TextStyle(color: Colors.white, fontSize: 12),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom:0,
                    right:0,
                    left:0,
                    child: Container(
                      height: _height * 0.1,
                      width:double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ),
                        boxShadow: [
                          BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 20),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            BottomNavTile(Icons.home_outlined, 0,GuestScreen()),
                            BottomNavTile(Icons.dock, 1,GuestScreen2()),
                            BottomNavTile(Icons.search_off_outlined, 2,GuestScreen()),
                            BottomNavTile(Icons.person_outline_outlined, 3,GuestScreen()),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget BottomNavTile(IconData icon, int index,Widget Pages) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
          pages=Pages;
        });
      },
      child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: index == _selectedIndex ? Color(0xff7EAF3C) : Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(
            icon,
            color: index == _selectedIndex ? Colors.white: Color(0xFF989BA5) ,
          )),
    );
  }
}
