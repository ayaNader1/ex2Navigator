import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter{
  AppRouter._();
  static AppRouter router = AppRouter._();
  GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
  pushFunction(Widget widget){
    navKey.currentState.push(MaterialPageRoute(builder: (context){
      return widget;
    }));
  }

  pushNameFunction(String routName){
    navKey.currentState.pushNamed(routName);
  }

}