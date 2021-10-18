import 'package:flutter/material.dart';

Container standartContainer(Color containerRenk, String yazi, Color textRenk,
    double textSize, FontWeight kalinlik) {
  return Container(
    alignment: Alignment.center,
    color: containerRenk,
    margin: EdgeInsets.all(5),
    child: Text(
      yazi,
      textDirection: TextDirection.ltr,
      style: TextStyle(
        color: textRenk,
        fontSize: textSize,
        fontWeight: kalinlik,
      ),
    ),
  );
}
