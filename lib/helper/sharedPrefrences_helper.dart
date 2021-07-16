import 'package:ex2_form/models/form_user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpHelper{
  SpHelper._();
  static SpHelper spHelper = SpHelper._();
  SharedPreferences sharedPreferences;
  initSharedPrefences() async{
    sharedPreferences = await SharedPreferences.getInstance();
  }

  saveUser(String user){
    sharedPreferences.setString('formUser', user);
  }
  getUser(){
    return sharedPreferences.getString('formUser');
  }
  removeUser(String key){
    sharedPreferences.remove(key);
  }
}