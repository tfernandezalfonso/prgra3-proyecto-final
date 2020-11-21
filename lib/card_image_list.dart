import 'package:flutter/material.dart';

import 'card_image.dart';

class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //cardImageList
    final cardImageList = Container(
      height: 330,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/images/jermu.jpg"),
          CardImage("assets/images/naspier.jpg"),
          CardImage("assets/images/sirena.png"),
          CardImage("assets/images/complex.jpg"),
          CardImage("assets/images/vibora.jpg"),
          CardImage("assets/images/tigre.jpg"),
          CardImage("assets/images/espada.jpg"),


        ],
      ),
    );

    return cardImageList;
  }
  
}