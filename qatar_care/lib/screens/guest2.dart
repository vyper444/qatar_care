import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GuestScreen2 extends StatefulWidget {
  @override
  _GuestScreen2State createState() => _GuestScreen2State();
}

class _GuestScreen2State extends State<GuestScreen2> {
  Widget Contact_info(String label,String info){
    return Container(
      width:double.infinity,
      padding: const EdgeInsets.only(top:15,bottom:15),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Text(label,style:TextStyle(fontWeight:FontWeight.bold,color:Colors.black)),
          Text(info,style:TextStyle(fontWeight:FontWeight.normal,color:Color(0xFF464552))),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: _height * 0.1,
            child:Image.asset("images/logo.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Divider(
              color: Color(0xFFA9B8C1),
            ),
          ),
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
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Divider(
              color: Color(0xFFA9B8C1),
            ),
          ),
          ExpansionTile(
            title: Text(
              'Accreditations',
              style: TextStyle(
                  color: Color(0xFF7EAF3C),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
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
          Padding(
            padding: const EdgeInsets.only(top: 20,bottom:20),
            child: Divider(
              color: Color(0xFFA9B8C1),
            ),
          ),
          Align(
            alignment:Alignment.topLeft,
            child: Text(
              'Services',
              textAlign:TextAlign.left,
              style: TextStyle(
                  color: Color(0xFF7EAF3C),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20,bottom:20),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("images/icons/icon1.png"),
                Image.asset("images/icons/icon2.png"),
                Image.asset("images/icons/icon3.png"),
                Image.asset("images/icons/icon4.png"),
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
          Padding(
            padding: const EdgeInsets.only(top: 20,bottom:20),
            child: Divider(
              color: Color(0xFFA9B8C1),
            ),
          ),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Website',
                textAlign:TextAlign.left,
                style: TextStyle(
                    color: Color(0xFF7EAF3C),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Icon(Icons.public,size:20,color:Color(0xFF7EAF3C)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,bottom:20),
            child: Divider(
              color: Color(0xFFA9B8C1),
            ),
          ),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Social Media',
                textAlign:TextAlign.left,
                style: TextStyle(
                    color: Color(0xFF7EAF3C),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: FaIcon(FontAwesomeIcons.instagram,size:20,color:Color(0xFF7EAF3C)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: FaIcon(FontAwesomeIcons.twitter,size:20,color:Color(0xFF7EAF3C)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: FaIcon(FontAwesomeIcons.facebook,size:20,color:Color(0xFF7EAF3C)),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,bottom:20),
            child: Divider(
              color: Color(0xFFA9B8C1),
            ),
          ),
          Align(
            alignment:Alignment.topLeft,
            child: Column(
              children: [
                Text(
                  'Contact us',
                  textAlign:TextAlign.left,
                  style: TextStyle(
                      color: Color(0xFF7EAF3C),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          Contact_info('Call us','Phone: +(974) 4447 7789'),
          Contact_info('Address','7th Floor, Unit 706, Al Qamra Holding Group,\nAl-Difaaf Street, Al-Sadd, Doha, Qatar'),
          Contact_info('Email','info@qatarcare.net'),
        ],
      ),
    );
  }
}
