import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomerTextField extends StatelessWidget{
  String lable;
  CustomerTextField(this.lable);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(20),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          labelText: lable,
          fillColor: Colors.amber.withOpacity(0.2),
          filled: true

        ),
      ),
    );
  }

}