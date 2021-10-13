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
    var data = (await http
            .get("https://hwasampleapi.firebaseio.com/api/books/0/author.json"))
        .body;
    data = json.decode(data);
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
      body: Container(),
    );
  }
}
