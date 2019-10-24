import 'package:flutter/material.dart';

import 'package:apuray/common/utils/NavigatorUtils.dart';

class WelcomePage extends StatefulWidget{

  static final String sName = "/";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _WelcomePageState();
  }

}

class _WelcomePageState extends State<WelcomePage>{

  bool hadInit = false;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    //防止多次进入
    if(hadInit){
      return;
    }
    hadInit = true;

    print("wch----------------------didChange");

    new Future.delayed(const Duration(seconds: 2, milliseconds: 500),(){
//      NavigatorUtils.goLogin(context);
      NavigatorUtils.goMain(context);
      return true;
    });

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: Container(
        color: Colors.white,
        width:double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                width: 20,
              ),
            ),
            Center(child: Image(image: AssetImage("static/images/launch.png"),width:87,height:94)),
            Expanded(
              flex: 4,
              child: Container(
                width: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }

}


