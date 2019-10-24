import 'package:flutter/material.dart';
import 'dart:async';

import 'package:apuray/common/utils/NavigatorUtils.dart';


class LoginPage extends StatefulWidget{
  static final String sName = "login";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _LoginPageState();
  }

}

class _LoginPageState extends State<LoginPage>{

  int _seconds = 0;
  Timer _timer;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: new Container(
        color: Colors.white,
        width:double.infinity,
        child: SafeArea(
            child: new Column(
              mainAxisSize: MainAxisSize.max, //垂直最大
              crossAxisAlignment:CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding:new EdgeInsets.only(top:48,left: 30),
                  child: Text(
                      '登录 发现更多精彩',
                      style: TextStyle(
                        color:Color(0xFF212121),
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                  ),
                ),
                Container(
                  padding:new EdgeInsets.only(top:40,left: 30,right: 30),
                  child: Row(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding:new EdgeInsets.only(top:0,right:38),
                        alignment: AlignmentDirectional.topStart,
                        child: Image(image: AssetImage("static/images/login_phone.png"),width:15,height:23),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '请输入手机号',
                            hintStyle: TextStyle(
                              color: Color(0xFFCCCCCC),
                              fontSize: 16,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFE0E0E0),width: 0.5),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFE0E0E0),width: 0.5),
                            ),
                            contentPadding: EdgeInsets.only(bottom: 30),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:new EdgeInsets.only(top:12,left: 30,right: 30),
                  child: Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: <Widget>[
                      Container(
                        padding:new EdgeInsets.only(top:14),
                        width: double.infinity,
                        alignment: AlignmentDirectional.topStart,
                        child: Image(image: AssetImage("static/images/login_identify.png"),width:16,height:19),
                      ),

                      Container(
                        padding:new EdgeInsets.only(top:14,left: 53),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: '请输入验证码',
                            hintStyle: TextStyle(
                              color: Color(0xFFCCCCCC),
                              fontSize: 16,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFE0E0E0),width: 0.5),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFE0E0E0),width: 0.5),
                            ),
                            contentPadding: EdgeInsets.only(bottom: 30),
                          ),
                        ),
                      ),
                      createVerfyButton(context),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top:32,left: 30,right: 30),
                  child: Material(
                    child: Ink(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF36F3F1),Color(0xFF36F3F1),Color(0xFF2CB4FE)],
                        stops: [0,0.3,1],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(23)),
                    ),
                      child: InkResponse(
                        onTap: (){
                          print("wch------------2");
                          NavigatorUtils.goMain(context);
                        },
                        borderRadius: new BorderRadius.all(new Radius.circular(23.0)),
                        highlightShape: BoxShape.rectangle,
                        radius: 200,
                        splashColor: Color(0xFF2CB4FE),
                        containedInkWell: true,
                        child: Container(
                          height: 46,
                          child: Center(
                            child: Text("登录",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top:25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(child: Container(
                        child:GestureDetector(
                          child: Text("账号注册",style: TextStyle(color: Color(0xFF616161)),),
                          onTapDown:(_)=>{
//                            print("wch----------账号注册")
                          },
                        ),
                        alignment: Alignment.centerRight,
                      ),),
                      Container(
                        margin: EdgeInsets.only(left:14,right: 14),
                        width: 1,
                        height: 12,
                        color: Color(0xFFE0E0E0),
                      ),
                      Expanded(child: Container(
                        child:GestureDetector(
                          child: Text("密码登录",style: TextStyle(color: Color(0xFF616161)),),
                          onTapDown:(_)=>{
//                            print("wch----------密码登录")
                          },
                        ),
                        alignment: Alignment.centerLeft,
                      ),),
                    ],
                  ),
                ),
              ],
            )
        ),


      ),
    );
  }

  ///布局"获取验证码"区域
  Widget createVerfyButton(BuildContext context){
    if(_seconds>0){
      return Container(
        padding: EdgeInsets.only(top:14),
        child: Text(
          "("+_seconds.toString()+"s)重新获取",
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
      );
    } else {
      return ButtonTheme(
        height: 30,
        minWidth: 93,
        child: FlatButton(
          onPressed: (){
            setState(() {
              _seconds = 60;
            });
            _timer = Timer.periodic(Duration(seconds: 1), (timer){
              _seconds--;
              setState(() {});
              if(_seconds<=0){
                _timer.cancel();
              }
            });
          },
          padding: EdgeInsets.all(0),
          color: Color(0xFFF2F2F2),
          child: Text('获取验证码',style: TextStyle(fontSize:14,color:Color(0xFF9E9E9E))),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
        ),
      );
    }
  }

}


/*

//带有圆角的按钮
Container(
  padding: EdgeInsets.only(top:32,left: 30,right: 30),
  child: InkWell(
    onTap: (){
      print("wch------------");
    },
    child: Container(
      height: 46,
      decoration: BoxDecoration(
        color: Colors.green,
        gradient: LinearGradient(
          colors: [Color(0xFF36F3F1),Color(0xFF36F3F1),Color(0xFF2CB4FE)],
          stops: [0,0.3,1],
        ),
        borderRadius: BorderRadius.all(Radius.circular(23)),
      ),
      child: Center(
        child: Text("登录",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
      ),
    ),
  ),
),


 */