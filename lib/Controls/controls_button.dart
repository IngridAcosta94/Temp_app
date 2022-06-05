import 'package:flutter/material.dart';

class controlsbutton extends StatelessWidget {
//Declaramos las variables que necesitaremos

  //calculo temperatura
  final String countryName;
  final String climName; //nombre Ciudad

  final double finalTemp;

  final Function mexico, monterrey, yucatan, veracruz, sonora;
  // poner algun icono o texto al boton

  const controlsbutton({
    Key? key,
    required this.countryName,
    required this.finalTemp,
    required this.climName,
    required this.mexico,
    required this.yucatan,
    required this.sonora,
    required this.monterrey,
    required this.veracruz,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        TextButton(
          child: Text('México',
              style: TextStyle(
                  color: Color.fromARGB(255, 76, 184, 238), fontSize: 14)),
          onPressed: () => mexico(),
        ),
        TextButton(
          child: Text('Yucatán',
              style: TextStyle(
                  color: Color.fromARGB(255, 76, 184, 238), fontSize: 14)),
          onPressed: () => yucatan(),
        ),
        TextButton(
          child: Text('Monterrey',
              style: TextStyle(
                  color: Color.fromARGB(255, 76, 184, 238), fontSize: 14)),
          onPressed: () => monterrey(),
        ),
        TextButton(
          child: Text('Sonora',
              style: TextStyle(
                  color: Color.fromARGB(255, 76, 184, 238), fontSize: 14)),
          onPressed: () => sonora(),
        ),
        TextButton(
          child: Text('Veracruz',
              style: TextStyle(
                  color: Color.fromARGB(255, 76, 184, 238), fontSize: 15)),
          onPressed: () => veracruz(),
        ),
      ],
    );
  }
}
