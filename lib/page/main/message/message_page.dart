import 'package:flutter/material.dart';


class MessagePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _MessagePage();
  }

}

class _MessagePage extends State<MessagePage> with AutomaticKeepAliveClientMixin{

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("消息"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text("消息内容\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1消息内容\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1消息内容\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1"),
            ],
          ),
        ),
      ),
    );
  }

}