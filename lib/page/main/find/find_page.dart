import 'package:flutter/material.dart';


class FindPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _FindPage();
  }

}

class _FindPage extends State<FindPage> with AutomaticKeepAliveClientMixin{

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 63,
            padding: EdgeInsets.only(top: 27,left: 20),
            child: Text("发现",style: TextStyle(color: Color(0xFF616161),fontSize: 24,fontWeight: FontWeight.w600),),
          ),
          Expanded(child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context,index){
              return Dismissible(
                key: Key(index.toString()),
                confirmDismiss: (direction){
                  return showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Confirm"),
                        content: const Text("Are you sure you wish to delete this item?"),
                        actions: <Widget>[
                          FlatButton(
                              onPressed: () => Navigator.of(context).pop(true),
                              child: const Text("DELETE")
                          ),
                          FlatButton(
                            onPressed: () => Navigator.of(context).pop(false),
                            child: const Text("CANCEL"),
                          ),
                        ],
                      );
                    },
                  );
                },
                onDismissed: (direction){

                },
                direction: DismissDirection.endToStart,
                background: Container(
                  color: Colors.red,
                ),
//                movementDuration: Duration(milliseconds: 100),
                child: GestureDetector(
                  onTapDown:(_)=>{
                    print("wch--------------tapdown")
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 20,top: 17,right: 20,bottom: 17),
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image(image: AssetImage("static/images/home_headicon.png"),width:70,height:70),
                        Expanded(
                          child: Container(
                            alignment: Alignment.topLeft, //填充父view
                            padding: EdgeInsets.only(left: 6,right: 6),
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 22,
                                  child: Row(
                                    children: <Widget>[
                                      Flexible(
                                        child: Text("Renly",
                                          maxLines:1,
                                          overflow:TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: Color(0xFF212121),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 6,
                                      ),
                                      Text("和你打了招呼$index",
                                        maxLines:1,
                                        overflow:TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Color(0xFF212121),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text("你好，可以和你做个朋友吗4543",
                                  overflow:TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Color(0xFF616161),
                                    fontSize: 13,

                                  ),
                                ),
                                Container(
                                  height: 17,
                                  child: Row(
                                    children: <Widget>[
                                      Image(image: AssetImage("static/images/find_location.png"),width:10,height:12),
                                      Container(
                                        width: 4,
                                      ),
                                      Flexible(
                                        child: Text("西红门",
                                          overflow:TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: Color(0xFF9E9E9E),
                                            fontSize: 12,

                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 20,
                                      ),
                                      Text("09:42",
                                        overflow:TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Color(0xFF9E9E9E),
                                          fontSize: 12,

                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 78,
                          alignment: Alignment.topLeft,
                          child: Material(
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Color(0xFF36F3F1),Color(0xFF36F3F1),Color(0xFF2CB4FE)],
                                  stops: [0,0.2,1],
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                              ),
                              child: InkResponse(
                                onTap: (){
                                  print("wch------------2");
                                },
                                borderRadius: new BorderRadius.all(new Radius.circular(15.0)),
                                highlightShape: BoxShape.rectangle,
                                radius: 70,
                                splashColor: Color(0xFF2CB4FE),
                                containedInkWell: true,
                                child: Container(
                                  height: 30,
                                  child: Center(
                                    child: Text("交个朋友",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),),

        ],
      ),
//      body: Center(
//        child: SingleChildScrollView(
//          child: Column(
//            children: <Widget>[
//              Text("发现内容\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1发现内容\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1发现内容\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1"),
//            ],
//          ),
//        ),
//      ),
    );
  }

}