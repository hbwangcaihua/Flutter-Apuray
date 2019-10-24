import 'package:flutter/material.dart';

import 'package:apuray/page/login/login_page.dart';
import 'package:apuray/page/main/main_page.dart';


class NavigatorUtils{

  //push新页面
  static pushNamed(BuildContext context,String routeName){
    Navigator.pushNamed(context, routeName);
  }

  //push新页面，并移除当前页面
  static pushReplacementNamed(BuildContext context,String routeName){
    Navigator.pushReplacementNamed(context, routeName);
  }


  //跳转到登录页
  static goLogin(BuildContext context){
    Navigator.pushReplacementNamed(context, LoginPage.sName);
  }

  //跳转到主页
  static goMain(BuildContext context){
    Navigator.pushReplacementNamed(context, MainPage.sName);
  }


}