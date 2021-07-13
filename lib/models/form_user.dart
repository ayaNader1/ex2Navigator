import 'package:ex2_form/main.dart';
import 'package:flutter/foundation.dart';

class FormUser {
  UserType userType;
  String username;
  String password;
  String shopName;
  String catName;
  String bio;
  String shopAddress;
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
        this.userType = UserType.customer});
}

