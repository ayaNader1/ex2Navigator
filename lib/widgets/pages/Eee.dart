import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EPage extends StatelessWidget{
  String ee ;
  EPage(this.ee);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text(ee),
      ),
    );
  }

}