import 'package:ex2_form/widgets/pages/customer_page.dart';
import 'package:ex2_form/widgets/pages/mershnt.dart';
import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FormA(),
    );
  }
}
enum UserType {customer,mershant}

class FormA extends StatefulWidget {
  @override
  _FormAState createState() => _FormAState();
}

class _FormAState extends State<FormA> {
  UserType userType = UserType.customer;
  String val;
  bool visb=false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Form'),
        ),
        body: Form(
            key: formKey,
            child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: RadioListTile(
                        title: Text('Customer'),
                        onChanged: (v) {this.userType=v;
                        visb=false;
                        setState(() {
                        });},
                        value: UserType.customer,
                        groupValue: userType,
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        title: Text('Mershant'),
                        onChanged: (v) {
                          this.userType=v;
                          setState(() {
                          });
                        },
                        value: UserType.mershant,
                        groupValue: userType,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: userType==UserType.mershant?
                MershantWidget():CustomerWidget(),
              ),


              // TextFormField(
                  // style: TextStyle(
                  //
                  // ) ,
                  // validator: (String value){
                  //   if(value.length ==0){
                  //     return 'Required Field ';
                  //   } else if(!isEmail(value) ){
                  //     return 'Email is Unvalid';
                  //   }
                  // },
                  // onSaved: (String value){
                  // },
                  // ),
              // CustomerWidget()
            ],
          )));
  }
}
