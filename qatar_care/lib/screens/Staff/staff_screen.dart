import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StaffScreen extends StatefulWidget {
  @override
  _StaffScreenState createState() => _StaffScreenState();
}

class _StaffScreenState extends State<StaffScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(right:20,left:20),
      child:Text("Data"),
    );
  }
}
