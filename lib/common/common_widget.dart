import 'package:flutter/material.dart';

TextStyle basicTextStyle(){
  return TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontSize: 20
  );
}

TextField basicTextField(){
  return TextField(
    decoration: InputDecoration(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
            color: Colors.black,
            style: BorderStyle.solid
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.teal,
        ),
      ),
    ),
  );
}
