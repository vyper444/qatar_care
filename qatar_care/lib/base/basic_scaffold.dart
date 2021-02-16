import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicScaffold extends StatelessWidget{
  var child;
  BasicScaffold({this.child});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
    );
  }

}