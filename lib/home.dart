import 'package:flutter/material.dart';
import 'package:proyecto/card_image.dart';
import 'package:proyecto/description_place.dart';
import 'package:proyecto/gradient_back.dart';
import 'package:proyecto/home_app_bar.dart';
import 'package:proyecto/review.dart';
import 'package:proyecto/review_list.dart';


class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final descriptionPlace = Container(
      margin: EdgeInsets.only(
        top: 330,
        left: 30,
        right: 30
      ),
      child: DescriptionPlace("Tatuaje y Piercing", 4,"Somos el estudio de tatuajes y piercing más disruptivo de la ciudad de Cocha. Ven y conoce a nuestros artistas, compártenos tus ideas y te guiaremos para que elijas al tatuador que se apegue a lo que traes en mente y a tus gustos, por más extraños que sean... no te creas, jajaja"),
    );

    final reviewList = Container(
      margin: EdgeInsets.only(
          top: 20,
          left: 30,
          right: 30
      ),
      child: ReviewList()
    );

    //listView
    final listView = ListView(
      children: <Widget>[
        descriptionPlace,
        reviewList
      ],
    );

   return Scaffold(
      body: Stack(
        children: <Widget>[
          listView,
          HomeAppBar("INFERNO Y TATUAJES")
        ],
      ),
    );
  }
  
}