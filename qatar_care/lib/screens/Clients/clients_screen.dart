import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../base/basic_scaffold.dart';


class ClientScreen extends StatefulWidget {
  @override
  _ClientScreenState createState() => _ClientScreenState();
}

class _ClientScreenState extends State<ClientScreen> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(right: 20, left: 20),
      child: Row(
        children: [
          Container(
            width: _width * 0.21,
            height: _height * 0.1,
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Color(0xFF7EAF3C)),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius:BorderRadius.circular(10),
                child: Image.asset(
              "images/profilepic.png",
              fit: BoxFit.cover,
            )),
          ),
          Container(
            child: Column(
              children: [

              ],
            ),
          )
        ],
      ),
    );
  }
}
