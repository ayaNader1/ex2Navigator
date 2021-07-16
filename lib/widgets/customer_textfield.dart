import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomerTextField extends StatefulWidget{
  String lable;
  bool isPassword;
  TextEditingController controller;
  CustomerTextField(this.lable, this.controller, [this.isPassword = false]);

  @override
  _CustomerTextFieldState createState() => _CustomerTextFieldState();
}

class _CustomerTextFieldState extends State<CustomerTextField> {
  bool isObsecure = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(20),
      child: TextFormField(
        obscureText: widget.isPassword ? isObsecure : false,
        controller: widget.controller,
        decoration: InputDecoration(
            suffixIcon: Visibility(
              visible: widget.isPassword,
              child: IconButton(
                icon: Icon(Icons.remove_red_eye),
                onPressed: () {
                  this.isObsecure = !this.isObsecure;
                  setState(() {});
                },
              ),
            ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          labelText: widget.lable,
          fillColor: Colors.amber.withOpacity(0.2),
          filled: true

        ),
      ),
    );
  }
}