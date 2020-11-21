import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //gradiente
    final gradiente = Container(
      height:265,
      decoration: BoxDecoration(
        gradient: LinearGradient (
          colors: [

           Color(0xFF914D32),
            Color(0xFF116780)
          ],
          begin: FractionalOffset(0.3, 0.2),
          end: FractionalOffset(1.0, 1.0),
          stops: [0.1, 0.6],
          tileMode: TileMode.clamp
        ),
      ),
    );
    return gradiente;
  }
  
}