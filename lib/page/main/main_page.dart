import 'package:flutter/material.dart';

import 'package:apuray/page/main/home/home_page.dart';
import 'package:apuray/page/main/find/find_page.dart';
import 'package:apuray/page/main/message/message_page.dart';

class MainPage extends StatefulWidget{

  static final String sName = "main";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _MainPage();
  }

}

class _MainPage extends State<MainPage>{

  int _currentIndex = 1;
  List<Widget> pages = new List();
  PageController _pageController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    pages.add(HomePage());
    pages.add(FindPage());
    pages.add(MessagePage());
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
//      bottomNavigationBar: BottomNavigationBar(
//        items: [
//          BottomNavigationBarItem(
//              icon: Icon(Icons.home),
//              title: Text('首页')
//          ),
//          BottomNavigationBarItem(
//              icon: Icon(Icons.business),
//              title: Text('商业')
//          ),
//          BottomNavigationBarItem(
//              icon: Icon(Icons.mood),
//              title: Text('我的')
//          ),
//        ],
//        currentIndex: _currentIndex,
//        onTap: (int i){
//          _pageController.jumpToPage(i);
//        },
//      ),
        bottomNavigationBar:Container(
          width: double.infinity,
          height: 49,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Color(0x0A000000),
                  offset: Offset(-5.0, -5.0), //阴影位置
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
              Expanded(
                child: GestureDetector(
                  child:Container(
                    color: Colors.white,
                    width: double.infinity,
                    height: double.infinity,
                    child:  Center(
                      child: Image(image: AssetImage(_currentIndex==0?"static/images/maintab_home_hl.png":"static/images/maintab_home_normal.png"),width:20,height:20),
                    ),
                  ),
                  onTapDown:(_)=>{
                    _pageController.jumpToPage(0)
                  },
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child:Container(
                    color: Colors.white,
                    width: double.infinity,
                    height: double.infinity,
                    child:  Center(
                      child: Image(image: AssetImage(_currentIndex==1?"static/images/maintab_find_hl.png":"static/images/maintab_find_normal.png"),width:20,height:20),
                    ),
                  ),
                  onTapDown:(_)=>{
                  _pageController.jumpToPage(1)
                  },
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child:Container(
                    color: Colors.white,
                    width: double.infinity,
                    height: double.infinity,
                    child:  Center(
                      child: Image(image: AssetImage(_currentIndex==2?"static/images/maintab_message_hl.png":"static/images/maintab_message_normal.png"),width:20,height:20),
                    ),
                  ),
                  onTapDown:(_)=>{
                  _pageController.jumpToPage(2)
                  },
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: PageView.builder(
            //要点1
              physics: NeverScrollableScrollPhysics(),
//              //禁止页面左右滑动切换
              controller: _pageController,
              onPageChanged: (int i){
                setState(() {
                  _currentIndex = i;
                });
              },
              //回调函数
              itemCount: pages.length,
              itemBuilder: (context, index) => pages[index]),
        ),
    );
  }

}

