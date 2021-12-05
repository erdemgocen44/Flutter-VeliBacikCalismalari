import 'package:flutter/material.dart';
import 'package:slider/packeges/container.dart';

class ContainerView extends StatefulWidget {
  const ContainerView({Key? key}) : super(key: key);

  @override
  _ContainerViewState createState() => _ContainerViewState();
}

class _ContainerViewState extends State<ContainerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.cyanAccent,
          alignment: Alignment.center,
          child: Container(
            alignment: Alignment.center,
            color: Colors.pinkAccent,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            child: Container(
              alignment: Alignment.center,
              color: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  ucluRow(),
                  ucluRow(),
                  ucluRow(),
                  ucluRow(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ucluRow extends StatelessWidget {
  const ucluRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      textBaseline: TextBaseline.alphabetic,
      children: [
        standartContainer(
          Colors.brown,
          "Bitti",
          Colors.pinkAccent,
          25,
          FontWeight.bold,
        ),
        standartContainer(
          Colors.black45,
          "Süper",
          Colors.lightGreenAccent,
          25,
          FontWeight.bold,
        ),
        standartContainer(
          Colors.tealAccent,
          "Sonunda",
          Colors.indigo,
          25,
          FontWeight.bold,
        ),
      ],
    );
  }
}
