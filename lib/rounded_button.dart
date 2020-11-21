import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget{
  String textoBoton;

  RoundedButton(this.textoBoton);

  @override
  Widget build(BuildContext context) {
    //boton
    final roundedButton = InkWell(
      child: Container(
        height: 50,
        width: 160,
        margin: EdgeInsets.only(
          top: 20
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            colors: [
              Color(0XFF675E50),
              Color(0XFF07333f),
              //Color(0xFF116780)
            ],
            begin: FractionalOffset(0.1,0.5),
            end: FractionalOffset(1.0,1.5),
            stops: [0.0,0.5],
            tileMode: TileMode.clamp
          ),
        ),
        child: Center(
          child: Text(
            textoBoton,
            style: TextStyle(
              fontFamily: "Lato",
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white
            ),
          ),
        ),
      ),
      onTap: (){
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text("Navegando..."),
          ),
        );
      },
    );

    return roundedButton;
  }

}