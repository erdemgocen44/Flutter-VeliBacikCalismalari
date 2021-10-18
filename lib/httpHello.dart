import 'dart:convert';

import 'package:flutter/material.dart';

class HttpHello extends StatefulWidget {
  HttpHello({Key? key}) : super(key: key);

  @override
  _HttpHelloState createState() => _HttpHelloState();
}

class _HttpHelloState extends State<HttpHello> {
  get http => null;

  // get http => null;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   isHaveData = false;
  //   data = "";
  // }

  void getApiJohnName() async {
    return (await http
            .get("https://hwasampleapi.firebaseio.com/api/books/0/author.json"))
        .body;

    // setState(() {
    //   isHaveData = !isHaveData;
    //   this.data = data;
    // });
  }

  @override
  Widget build(BuildContext context) {
    // var columnCenter = Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   children: [
    //     isHaveData ? Text(data) : CircularProgressIndicator(),
    //     ElevatedButton(
    //       child: Text("Send Request"),
    //       onPressed: () async {
    //         getApiJohnName();
    //       },
    //     ),
    //   ],
    // );
    return Scaffold(
      body: Center(
          // child: FutureBuilder(
          //   future: getApiJohnName(),
          //   builder: (context, snapshot) {
          //     if (snapshot.connectionState == ConnectionState.done) {
          //       if (snapshot.hasData) {
          //         return Text(json.decode(snapshot.data));
          //         else Text("You have error. look at API");
          //       }else if(snapshot.connectionState==ConnectionState.waiting){
          //         return CircularProgressIndicator();
          //       }else return Text("You have error. are u sure API");

          //     }
          //   },
          // ),
          ),
    );
  }
}
