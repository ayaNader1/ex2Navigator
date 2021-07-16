import 'package:ex2_form/helper/sharedPrefrences_helper.dart';
import 'package:ex2_form/models/form_user.dart';
import 'package:ex2_form/router/router.dart';
import 'package:ex2_form/widgets/pages/Eee.dart';
import 'package:ex2_form/widgets/pages/customer_page.dart';
import 'package:ex2_form/widgets/pages/homePage.dart';
import 'package:ex2_form/widgets/pages/mershnt.dart';
import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SpHelper.spHelper.initSharedPrefences();
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
      navigatorKey: AppRouter.router.navKey,
      home: SpHelper.spHelper.getUser() != null ? HomePage():FormA(),
      routes: {
        // '/':(context)=>FormA(),
        // 'home':(context)=>HomePage()
      },
      onGenerateRoute: (RouteSettings routeSetting){
        String name = routeSetting.name;
        var arguments = routeSetting.arguments;
        if (name == 'home'){
          return MaterialPageRoute(builder: (context){
            return HomePage();
          });
        }else{
          return MaterialPageRoute(builder: (context){
            return EPage('404 Error');
          });
        }

      },
      // home: FormA(),
    );
  }
}
enum UserType {customer,mershant}

class FormA extends StatefulWidget {
  @override
  _FormAState createState() => _FormAState();
}

class _FormAState extends State<FormA> {
  FormUser formUser;
  setFormUser(formuser) {
    this.formUser = formuser;
  }

  UserType geoupValue;
  String email;
  String password;
  setEmail(String email) {
    this.email = email;
  }

  setPassword(String password) {
    this.password = password;
  }

  saveForm() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return HomePage();
    }));
    // if (formKey.currentState.validate()) {
    //   formKey.currentState.save();
    // } else {
    //   return;
    // }
  }

  GlobalKey<FormState> mershantKey = GlobalKey<FormState>();
  GlobalKey<FormState> customerKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Form'),
        ),
        body: Form(
            child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: RadioListTile(
                        title: Text('Customer'),
                        onChanged: (v) {this.geoupValue=v;
                        setState(() {
                        });},
                        value: UserType.customer,
                        groupValue: geoupValue,
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        title: Text('Mershant'),
                        onChanged: (v) {
                          this.geoupValue=v;
                          setState(() {
                          });
                        },
                        value: UserType.mershant,
                        groupValue: geoupValue,
                      ),
                    ),
                  ],
                ),
              ),
              // Expanded(
              //   flex: 2,
              //   child: userType==UserType.mershant?
              //   MershantWidget():CustomerWidget(),
              // ),

              this.geoupValue == UserType.customer
                  ? CustomerWidget()
                  : MershantWidget(),


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
