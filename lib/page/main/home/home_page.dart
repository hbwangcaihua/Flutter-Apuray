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
    return Scaffold(
      appBar: AppBar(
        title: Text("主页"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text("主页内容\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1主页内容\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1主页内容\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1"),
            ],
          ),
        ),
      ),
    );
  }

}