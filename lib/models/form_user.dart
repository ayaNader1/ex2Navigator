import 'package:ex2_form/main.dart';
import 'package:ex2_form/widgets/pages/merchant_page.dart';
import 'package:ex2_form/widgets/pages/ustomer_page1.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FormUser {
  UserType userType;
  String username;
  String password;
  String shopName;
  String catName;
  String bio;
  String shopAddress;

  FormUser(this.catName);

  FormUser.customer(
      {@required this.username,
      @required this.password,
      this.userType = UserType.customer});

  FormUser.mershant (
      {@required this.username,
        @required this.password,
        @required this.shopName,
        @required this.shopAddress,
        @required this.bio,
        @required this.catName ,
        this.userType = UserType.mershant});

  FormUser.formUserType(UserType userType,BuildContext context){
    if (userType == UserType.mershant){
      Navigator.of(context).push(MaterialPageRoute(builder: (context){
        return Merchant_Page();
      }));
    }else{
      Navigator.of(context).push(MaterialPageRoute(builder: (context){
        return Customer_Page();
      }));
    }
  }
}

