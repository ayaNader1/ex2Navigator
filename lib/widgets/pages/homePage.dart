import 'package:ex2_form/models/form_user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.of(context).pop('hello sign in page');
          }, child: Text('Sign Out'))
        ],
      ),
    );
  }

}