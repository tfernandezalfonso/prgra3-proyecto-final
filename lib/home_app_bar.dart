import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto/card_image_list.dart';
import 'package:proyecto/gradient_back.dart';

class HomeAppBar extends StatelessWidget{
  String textoTitulo;

  HomeAppBar(this.textoTitulo);

  @override
  Widget build(BuildContext context) {
    //titulo
    final titulo = Container(
      margin: EdgeInsets.only(
        top: 43,
        left:42
      ),
      child: Text(
        textoTitulo,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "NewRocker",
          //fontWeight: FontWeight.bold,
          fontSize: 22,
          color: Colors.white
        ),
      ),
    );

    // appBar
    final appBar = Stack(
      children: <Widget>[
        GradientBack(),
        titulo,
        CardImageList()
      ],
    );

    return appBar;
  }

}