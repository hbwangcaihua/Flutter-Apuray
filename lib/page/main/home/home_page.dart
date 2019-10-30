import 'package:flutter/material.dart';


class HomePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _HomePage();
  }

}

class _HomePage extends State<HomePage> with AutomaticKeepAliveClientMixin{

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        navbar(context),
        Expanded(
          child: Stack(
            fit: StackFit.loose,
            children: <Widget>[
              Container(
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  topArea(context),
                  bottomButtons(context),
                ],
              ),
            ],
          ),
        ),

      ],
    );
  }

  //顶部导航栏
  Widget navbar(BuildContext context){
    return Container(
      height: 70,
      padding: EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Color(0x0A000000),
              offset: Offset(5.0, 5.0), //阴影位置
              blurRadius: 5, //阴影模糊度
              spreadRadius: 0.01 //阴影模糊大小
          ),
          BoxShadow(
            color: Colors.white,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text("逛",style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Color(0xFF616161)),),
          ),
          Spacer(flex: 1,),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.only(right: 40),
              child: Image(image: AssetImage("static/images/home_self.png"),width:16,height:15),
            ),
          ),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.only(right: 20),
              child: Image(image: AssetImage("static/images/home_set.png"),width:18,height:17),
            ),
          ),
        ],
      ),
    );
  }

  //导航栏下 ----  四个按钮上侧
  Widget topArea(BuildContext context){
    return Expanded(
      child: Container(
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 58,
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 16),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: 62,
                        height: 42,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topRight:Radius.circular(21), bottomRight: Radius.circular(21) ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x5F36F3F1),
                              offset: Offset(0, 0), //阴影位置
                              blurRadius: 10, //阴影模糊度
                            )
                          ],
                        ),
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(right: 4),
                        child: Image(image: AssetImage("static/images/home_find.png"),width:17,height:18)
                      ),
                      Center(
                        child: Container(
                          width: 202,
                          height: 42,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(21)),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x5F36F3F1),
                                offset: Offset(0, 0), //阴影位置
                                blurRadius: 10, //阴影模糊度
                              )
                            ],
                          ),
                          padding: EdgeInsets.only(left: 5,right: 5),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: GestureDetector(
                                  child: Container(
                                    height: double.infinity,
                                    child: Center(
                                      child: Text("附近的人",style: TextStyle(fontSize: 14,color: Color(0xFF33D3FA),fontWeight: FontWeight.w600),),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 1,
                                height: 14,
                                color: Color(0xFFE0E0E0),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  child: Container(
                                    height: double.infinity,
                                    child: Center(
                                      child: Text("推荐",style: TextStyle(fontSize: 14,color: Color(0xFF9E9E9E),fontWeight: FontWeight.w600),),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.red,
                  height: 97,
                  width: 97,
                ),
              ],
            ),
            Center(
              child: Image(image: AssetImage("static/images/home_mylocation.png"),width:32,height:40),
            ),
          ],
        ),
      ),
    );
  }

  //底部按钮区域
  Widget bottomButtons(BuildContext context){
    return Container(
      padding: EdgeInsets.only(left: 20,right: 20,bottom: 28),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(25)),
          boxShadow: [
            BoxShadow(
                color: Color(0x5F36F3F1),
                offset: Offset(0, 0), //阴影位置
                blurRadius: 10, //阴影模糊度
            )
          ],
        ),
        padding: EdgeInsets.only(left: 18,right: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                child: Container(
                  padding: EdgeInsets.only(top: 8,bottom: 7),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image(image: AssetImage("static/images/home_menu1.png"),width:15,height:15),
                      Text("找TA",style: TextStyle(color: Color(0xFF616161),fontSize: 12),),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                child: Container(
                  padding: EdgeInsets.only(top: 8,bottom: 7),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image(image: AssetImage("static/images/home_menu2.png"),width:15,height:15),
                      Text("提取留言",style: TextStyle(color: Color(0xFF616161),fontSize: 12),),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                child: Container(
                  padding: EdgeInsets.only(top: 8,bottom: 7),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image(image: AssetImage("static/images/home_menu3.png"),width:15,height:15),
                      Text("到此一游",style: TextStyle(color: Color(0xFF616161),fontSize: 12),),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                child: Container(
                  padding: EdgeInsets.only(top: 8,bottom: 7),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image(image: AssetImage("static/images/home_menu4.png"),width:15,height:15),
                      Text("刷新定位",style: TextStyle(color: Color(0xFF616161),fontSize: 12),),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}