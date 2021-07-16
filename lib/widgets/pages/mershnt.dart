import 'package:ex2_form/models/form_user.dart';
import 'package:ex2_form/widgets/customer_button.dart';
import 'package:ex2_form/widgets/dropDownList.dart';
import 'package:ex2_form/widgets/pages/homePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

import '../customer_textfield.dart';
import '../globals.dart';

class MershantWidget extends StatefulWidget{
  @override
  _MershantWidgetState createState() => _MershantWidgetState();
}

class _MershantWidgetState extends State<MershantWidget> {
  List categories = ['Fashion', 'Shoes', 'Electronics', 'Midecals', 'Software'];

  String dropDownValue = 'Fashion';
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String email;
  String password;
  String shopName;
  String bio;
  String category;
  String shopAddress;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: formKey,
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                onSaved: (v) => this.email = v,
                validator: (String value) {
                  if (value.length == 0) {
                    return 'Required Field';
                  } else if (!isEmail(value)) {
                    return 'Invalid Email Syntax';
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    labelText: 'Email',
                    fillColor: Colors.blue.withOpacity(0.2),
                    filled: true),
              )),
          Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                onSaved: (v) => this.password = v,
                validator: (String value) {
                  if (value.length == 0) {
                    return 'Required Field';
                  } else if (value.length < 6) {
                    return 'the password must be larger than 6 lettres';
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    labelText: 'Password',
                    fillColor: Colors.blue.withOpacity(0.2),
                    filled: true),
              )),
          Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                onSaved: (v) => this.shopName = v,
                validator: (String value) {
                  if (value.length == 0) {
                    return 'Required Field';
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    labelText: 'Shop Name',
                    fillColor: Colors.blue.withOpacity(0.2),
                    filled: true),
              )),
          Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                onSaved: (v) => this.shopAddress = v,
                validator: (String value) {
                  if (value.length == 0) {
                    return 'Required Field';
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    labelText: 'Shop Address',
                    fillColor: Colors.blue.withOpacity(0.2),
                    filled: true),
              )),
          Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                onSaved: (v) => this.bio = v,
                validator: (String value) {
                  if (value.length == 0) {
                    return 'Required Field';
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    labelText: 'Bio',
                    fillColor: Colors.blue.withOpacity(0.2),
                    filled: true),
              )),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Colors.blue.withOpacity(0.2),
                borderRadius: BorderRadius.circular(15)),
            child: DropdownButton<String>(
                isExpanded: true,
                underline: Container(),
                value: this.category,
                onChanged: (v) {
                  this.category = v;
                  setState(() {});
                },
                items: categories.map((e) {
                  return DropdownMenuItem<String>(
                    child: Text(e),
                    value: e,
                  );
                }).toList()),
          ),
          ElevatedButton(
            child: Text('Sign Up As Mershant'),
            onPressed: () {
              if (formKey.currentState.validate()) {
                formKey.currentState.save();
                FormUser formUser = FormUser.mershant(
                    username: email,
                    password: password,
                    shopName: shopName,
                    shopAddress: shopAddress,
                    bio: bio,
                    catName: category);
                Globals.globals.formUser = formUser;
                Future<String> result = Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));
                print(result);
              }
            },
          )
        ],
      ),
    );

    // return ListView(
    //   children: [
    //     // CustomerTextField('User Name'),
    //     // CustomerTextField('Password'),
    //     // CustomerTextField('Shop Name'),
    //     // CustomerTextField('Shop Cat'),
    //     // CustomerTextField('Bio'),
    //     // CustomDropDown(),
    //     // CustomButton()
    //   ],
    // );
  }
}
