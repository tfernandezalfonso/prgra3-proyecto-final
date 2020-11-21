import 'package:flutter/material.dart';
import 'package:proyecto/review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //reviewList
    final reviewList = Column(
      children: <Widget>[
        Review("assets/images/ceja.jpg", "Ceja Piercing", "joyería: Barbell curvado", 4,"Súper solicitado."),
        Review("assets/images/helix.jpg", "Helix Piercing", "joyería: Labret o barbell", 5,"Apropiate de tu ser."),
        Review("assets/images/labret.jpg", "Jellyfish Piercing", "joyería: Labret", 1,"Toda una práctica milenaria."),
        Review("assets/images/pezon.gif", "Microdermal", "Ancla o base de titanio", 3,"Pontelo donde te inspira."),
        Review("assets/images/ombligo.jpg", " Navel", "Barbell curvado", 5,"Puro encanto femenino.")

      ],
    );

    return reviewList;
  }
  
}