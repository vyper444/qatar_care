import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_expansion_tile.dart';
import 'service_2.dart';

class GuestScreenOne extends StatefulWidget {
  @override
  _GuestScreenOneState createState() => _GuestScreenOneState();
}

class _GuestScreenOneState extends State<GuestScreenOne> {
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

  Widget services(Widget page,String image){
    return  GestureDetector(
      onTap:(){
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    page));
      },
      child:Image.asset(image),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery
        .of(context)
        .size
        .height;
    final _width = MediaQuery
        .of(context)
        .size
        .width;
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: _height * 0.15,
            child: Image.asset("images/logo.png"),
          ),
          line(0,20),
          Text(
            "Qatar Care is established on 2nd March 2007. We take immense pride in being the First "
                "Company to provide home nursing and medical services in the state of Qatar. "
                "And the First Home Care and Medical Services Agency in Qatar, within GCC with the Diamond "
                "Level of Accreditation granted by Accreditation Canada International.",
            style: TextStyle(
                color: Color(0xFF464552),
                fontWeight: FontWeight.w400,
                fontSize: 12),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              'Read More',
              style: TextStyle(
                  color: Color(0xFF707070),
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
          ),
          line(20,0),
          ListTileTheme(
            contentPadding: EdgeInsets.all(0),
            child: CustomExpansionTile(
              title: headings('Accreditations'),
              children: [
                Text(
                  "Qatar Care is established on 2nd March 2007. We take immense pride in being the First "
                      "Company to provide home nursing and medical services in the state of Qatar. "
                      "And the First Home Care and Medical Services Agency in Qatar, within GCC with the Diamond "
                      "Level of Accreditation granted by Accreditation Canada International.",
                  style: TextStyle(
                      color: Color(0xFF464552),
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Read More',
                    style: TextStyle(
                        color: Color(0xFF707070),
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
          line(0,20),
          Align(
            alignment: Alignment.topLeft,
            child: headings('Services'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                services(GuestScreenOne(),"images/icons/icon_g_1.png"),
                services(GuestScreenTwo(),"images/icons/icon2.png"),
                services(GuestScreenOne(),"images/icons/icon3.png"),
                services(GuestScreenOne(),"images/icons/icon4.png"),
              ],
            ),
          ),
          Text(
            'View other services care',
            style: TextStyle(
                color: Color(0xFF707070),
                fontWeight: FontWeight.bold,
                fontSize: 14),
          ),
          line(20,0),
          ListTileTheme(
            contentPadding: EdgeInsets.all(0),
            child: CustomExpansionTile(
              title: headings('CPD events'),
              children: [
                Text(
                  "Qatar Care is established on 2nd March 2007. We take immense pride in being the First "
                      "Company to provide home nursing and medical services in the state of Qatar. "
                      "And the First Home Care and Medical Services Agency in Qatar, within GCC with the Diamond "
                      "Level of Accreditation granted by Accreditation Canada International.",
                  style: TextStyle(
                      color: Color(0xFF464552),
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Read More',
                    style: TextStyle(
                        color: Color(0xFF707070),
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
          line(0,10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              headings('Website'),
              FaIcon(FontAwesomeIcons.globe, size: 20, color: Color(0xFF7EAF3C)),
            ],
          ),
          line(20,20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              headings('Social Media'),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: FaIcon(FontAwesomeIcons.instagram,
                        size: 20, color: Color(0xFF7EAF3C)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: FaIcon(FontAwesomeIcons.twitter,
                        size: 20, color: Color(0xFF7EAF3C)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: FaIcon(FontAwesomeIcons.facebook,
                        size: 20, color: Color(0xFF7EAF3C)),
                  ),
                ],
              ),
            ],
          ),
          line(20,20),
          Align(
            alignment: Alignment.topLeft,
            child: headings('Contact us'),
          ),
          contactInformation('Call us', 'Phone: +(974) 4447 7789'),
          contactInformation('Address',
              '7th Floor, Unit 706, Al Qamra Holding Group,\nAl-Difaaf Street, Al-Sadd, Doha, Qatar'),
          contactInformation('Email', 'info@qatarcare.net'),
        ],
      ),
    );
  }
}
