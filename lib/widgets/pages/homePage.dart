import 'package:ex2_form/helper/sharedPrefrences_helper.dart';
import 'package:ex2_form/models/form_user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget{
  FormUser formUser;
  HomePage([this.formUser]);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(SpHelper.spHelper.getUser()),
            ElevatedButton(onPressed: (){
              SpHelper.spHelper.removeUser('formUser');
              Navigator.of(context).pop('hello sign in page');
            }, child: Text('Sign Out'))
          ],
        ),
      ),
    );
  }

}