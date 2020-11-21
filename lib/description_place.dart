import 'package:flutter/material.dart';
import 'package:proyecto/rounded_button.dart';

class DescriptionPlace extends StatelessWidget{
  //variables
  String textoTitulo;
  int cantidadEstrellas;
  String textoDescripcion;

  //metodo constructor
  DescriptionPlace(this.textoTitulo,this.cantidadEstrellas,this.textoDescripcion);
  @override
  Widget build(BuildContext context) {
    final titulo = Container(
      margin: EdgeInsets.only(
          right: 20,
      ),
      child: Text(
        textoTitulo,
        style: TextStyle(
            fontFamily: "NewRocker",
            fontSize: 17,
            fontWeight: FontWeight.bold
        ),
      ),
    );

    final estrella = Container(
      margin: EdgeInsets.only(
         right: 5
      ),
      child: Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );

    final estrellaBorde = Container(
      margin: EdgeInsets.only(
          right: 5
      ),
      child: Icon(
        Icons.star_border,
        color: Colors.black54,
      ),
    );

    //fila estrellas
    List<Container>estrellas = new List();
    for(int i = 0; i < 3; i++){
      if(i < cantidadEstrellas){
        estrellas.add(estrella);
      }else{
        estrellas.add(estrellaBorde);
      }
    }

    final filaEstrellas = Row(
        children: estrellas,
    );

    final  filaTitulo = Row(
      children: <Widget>[
        titulo,
        filaEstrellas
      ],
    );

    final descripcion = Container(
      margin: EdgeInsets.only(
        top: 4
      ),
      child: Text(
        textoDescripcion,
        style: TextStyle(
          fontFamily: "Coustard",
          color: Color(0xFF914D32)
        ),
      ),
    );

    final descriptionPlace = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        filaTitulo,
        descripcion,
        RoundedButton("Navigate")
      ],
    );

    return descriptionPlace;
  }

}