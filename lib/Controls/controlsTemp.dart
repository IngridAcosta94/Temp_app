import 'dart:convert';

import 'package:flutter/material.dart';

//Este es el controlador de la temperatura al presionar un boton este cambiara el tipo
//de grados
class ControlsTemp extends StatelessWidget {
  final double finalTemp; // se tomara del valor random
  // final double fareheithTemp;
  // sera el resultado de la operación de conversion que se disparara cuando presione el boton
  final String nameClim; //Cambio del nombre del clima
  final String nameCountry; //Cambio nombre estado inicializaremos con Yucatán
  //final IconData iconStatus; // este servira para cambiar el diseño del boton y tambien cambiar el tipo de grados
  final bool status;
  final Function celsiusF, fahrenheitF;
  final String textbutton;
// celcious +-/  =Fareheith

  const ControlsTemp(
      {Key? key,
      required this.finalTemp,
      //required this.fareheithTemp,
      //required this.iconStatus,
      required this.nameClim,
      required this.nameCountry,
      required this.status,
      required this.celsiusF,
      required this.fahrenheitF,
      required this.textbutton})
      : super(key: key);
  //BODY
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //Este será el mismo boton que para cambio de celsious y fareheit
          Text(
            'press to convert to: ',
            style: const TextStyle(fontSize: 35, color: Colors.white),
          ),
          TextButton(
            child: Text(textbutton,
                style: TextStyle(
                    color: Color.fromARGB(255, 250, 252, 252), fontSize: 30)),
            onPressed: () => status ? fahrenheitF() : celsiusF(),
            style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 3, 52, 143)),
          ),

          Text(
            'State: $nameCountry',
            style: const TextStyle(fontSize: 30, color: Colors.white),
          ),
          Text(
            'the temperature is: $finalTemp °',
            style: const TextStyle(fontSize: 30, color: Colors.white),
          ),
          Text(
            'Weather: $nameClim',
            style: const TextStyle(fontSize: 30, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
