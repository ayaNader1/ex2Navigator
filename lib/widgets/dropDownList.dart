import 'package:ex2_form/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget{
  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String cat = 'man';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.amber),
          borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton<String>(
        value: cat,
        onChanged: (v){
          cat = v;
          setState(() {

          });
        },
        // items: [
        //   DropdownMenuItem(child: Text('data')),
        //   DropdownMenuItem(child: Text('data1')),
        //   DropdownMenuItem(child: Text('data2')),
        // ],
        items: datas.map((e){
          return DropdownMenuItem(child: Text(e) , value: e);
        }).toList()
      ),
    );
  }
}