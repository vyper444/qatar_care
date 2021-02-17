import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qatar_care/screens/Guest/service_1.dart';
import 'package:qatar_care/screens/Guest/service_4.dart';

import '../custom_components.dart';
import '../custom_expansion_tile.dart';
import '../Guest/service_2.dart';

class ServiceScreenThree extends StatefulWidget {
  @override
  _ServiceScreenThreeState createState() => _ServiceScreenThreeState();
}

class _ServiceScreenThreeState extends State<ServiceScreenThree> {
  Widget build(BuildContext context) {
    Custom custom=new Custom();
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
          custom.line(0,20),
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
          custom.line(20,0),
          ListTileTheme(
            contentPadding: EdgeInsets.all(0),
            child: CustomExpansionTile(
              title: custom.headings('Accreditations'),
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
          custom.line(0,20),
          Align(
            alignment: Alignment.topLeft,
            child: custom.headings('Services'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                custom.services(ServiceScreenOne(),"images/icons/icon1.png",context),
                custom.services(ServiceScreenTwo(),"images/icons/icon2.png",context),
                custom.services(ServiceScreenThree(),"images/icons/icon_g_3.png",context),
                custom.services(ServiceScreenFour(),"images/icons/icon4.png",context),
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
          custom.line(20,0),
          ListTileTheme(
            contentPadding: EdgeInsets.all(0),
            child: CustomExpansionTile(
              title: custom.headings('CPD events'),
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
          custom.line(0,10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              custom.headings('Website'),
              FaIcon(FontAwesomeIcons.globe, size: 20, color: Color(0xFF7EAF3C)),
            ],
          ),
          custom.line(20,20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              custom.headings('Social Media'),
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
          custom.line(20,20),
          Align(
            alignment: Alignment.topLeft,
            child: custom.headings('Contact us'),
          ),
          custom.contactInformation('Call us', 'Phone: +(974) 4447 7789'),
          custom.contactInformation('Address',
              '7th Floor, Unit 706, Al Qamra Holding Group,\nAl-Difaaf Street, Al-Sadd, Doha, Qatar'),
          custom.contactInformation('Email', 'info@qatarcare.net'),
        ],
      ),
    );
  }
}