import 'dart:html';

import 'package:ex2_form/models/form_user.dart';
import 'package:ex2_form/router/router.dart';
import 'package:ex2_form/widgets/pages/homePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget{
  FormUser formUser;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: ()async{
          // AppRouter.router.pushFunction(HomePage());
          AppRouter.router.pushNameFunction('home');
          // var result = await Navigator.pushNamed(
          //   context,
          //   'home'
          //     ,arguments: 'this is argument'
          //   // MaterialPageRoute(
          //   //     builder: (context) => HomePage(formUser)),
          // );
          // print(result);
        },
        child: Text('Submit'),
      ),
    );
  }

}
