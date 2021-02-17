import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'main_screen.dart';

class Custom {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget contactInformation(String label, String info) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
          Text(info,
              style: TextStyle(
                  fontWeight: FontWeight.normal, color: Color(0xFF464552))),
        ],
      ),
    );
  }

  Widget line(double Top,double Bottom) {
    return Padding(
      padding: EdgeInsets.only(top:Top, bottom:Bottom),
      child: Divider(
        color: Color(0xFFA9B8C1),
      ),
    );
  }

  Widget headings(String header) {
    return Text(
      header,
      textAlign: TextAlign.left,
      style: TextStyle(
          color: Color(0xFF7EAF3C), fontWeight: FontWeight.bold, fontSize: 20),
    );
  }

  Widget socialMediaIcons() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: FaIcon(FontAwesomeIcons.instagram,
          size: 20, color: Color(0xFF7EAF3C)),
    );
  }

  Widget services(Widget page,String image,BuildContext context){
    return  GestureDetector(
      onTap:(){
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    MainScreen(
                      pageName: page,
                    )));
      },
      child:Image.asset(image),
    );
  }
}
