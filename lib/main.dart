import 'package:flutter/material.dart';
import 'package:slider/httpHello.dart';
import 'package:slider/widget/shadow.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HttpHello(),
    );
  }
}

class TutorailOnePage extends StatelessWidget {
  const TutorailOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShadowWidget(
      elevation: 15,
      color: Colors.amber,
      child: Container(
        child: Text(
          "Mervem",
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontFamily: "Mukta",
            fontSize: 45,
          ),
        ),
      ),
    );
  }
}

class TutorialButtonPage extends StatelessWidget {
  const TutorialButtonPage({Key? key}) : super(key: key);
  void onPress() {
    print("MervErdem");
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => this.onPress(),
      child: ShadowWidget(
        color: Colors.black,
        elevation: 25,
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.red, Colors.yellow], stops: [0.0, 0.5])),
        ),
      ),
    );
  }
}
