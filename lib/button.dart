

import 'dart:ffi';

import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  Color colorButton;
  Color colorFont;
  String textoBotao;
  Widget page;

  Button(this.colorButton, this.colorFont, this.textoBotao, this.page);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: colorButton,
      textColor:colorFont,
      child : Text(textoBotao,style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),),onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
        return page;
      }));
    },

    );
  }
}
