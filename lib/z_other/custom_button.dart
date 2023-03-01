import 'package:flutter/material.dart';


Widget customButton(
    {String title = 'My Button',
      double height = 50,
      double width = 350,
      double fontSize = 25,
      dynamic fontWeight = FontWeight.bold,
      dynamic foregroundColor = const Color(0xFFFFEB3B),
      dynamic backgroundColor = const Color(0xFF1F4522),
      dynamic borderColor = const Color(0xFFFFEB3B),
      double borderWidth = 2,
      double borderRadius = 30,
      double paddingVertical = 0,
      double paddingHorizontal = 0,
      double outsidePaddingHorizontal = 10,
      required VoidCallback onPressed}) =>
    Container(
      padding: EdgeInsets.symmetric(horizontal: outsidePaddingHorizontal),
      height: height,
      width: width,
      child: ElevatedButton(
        style: ButtonStyle(
          side: MaterialStateProperty.resolveWith<BorderSide>(
                (states) => BorderSide(width: borderWidth, color: borderColor),
          ),
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          foregroundColor: MaterialStateProperty.all(foregroundColor),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
                vertical: paddingVertical, horizontal: paddingHorizontal),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius)),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
        ),
      ),
    );