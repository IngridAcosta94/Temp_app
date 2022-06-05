import 'dart:math';

import 'package:flutter/material.dart';
import 'package:temp_app/Controls/controlsTemp.dart';
import 'package:temp_app/Controls/controls_button.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

//CREAREMOS LAS FUNCIONES O LA FUNCIÓN

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool status = false;
  String nameClim = "Caluroso";
  String nameCountry = "Yucatán";
  double celciousTemp = 0;
  double fahrenheit = 0;
  IconData icon = Icons.play_arrow;
  Random rng = new Random();
  int valueRamdom = 0;
  double resultado = 0;
  String tempText = "";
  List<String> list = ["foggy", "rainy", "windy"];
  String value = "";
  double finalTemp = 30;
  String textButton = "°C";

//FUNCIONES

  void mexic() {
    status = false;
    valueRamdom = rng.nextInt(40);
    finalTemp = valueRamdom.toDouble();
    if (finalTemp >= 30) {
      nameClim = "warm";
    } else if (finalTemp <= 10) {
      nameClim = "snowy";
    } else {
      tempText = list[rng.nextInt(list.length)];
      nameClim = tempText;
    }
    nameCountry = "México";

    setState(() {});
  }

  void yucatan() {
    status = false;
    valueRamdom = rng.nextInt(40);
    finalTemp = valueRamdom.toDouble();
    if (finalTemp >= 30) {
      nameClim = "warm";
    } else if (finalTemp <= 10) {
      nameClim = "snowy";
    } else {
      tempText = list[rng.nextInt(list.length)];
      nameClim = tempText;
    }
    nameCountry = "Yucatán";

    setState(() {});
  }

  void monterrey() {
    status = false;
    valueRamdom = rng.nextInt(40);
    finalTemp = valueRamdom.toDouble();
    if (finalTemp >= 30) {
      nameClim = "warm";
    } else if (finalTemp <= 10) {
      nameClim = "snowy";
    } else {
      tempText = list[rng.nextInt(list.length)];
      nameClim = tempText;
    }
    nameCountry = "Monterrey";

    setState(() {});
  }

  void sonora() {
    status = false;
    valueRamdom = rng.nextInt(40);
    finalTemp = valueRamdom.toDouble();
    if (finalTemp >= 30) {
      nameClim = "warm";
    } else if (finalTemp <= 10) {
      nameClim = "snowy";
    } else {
      tempText = list[rng.nextInt(list.length)];
      nameClim = tempText;
    }
    nameCountry = "Sonora";

    setState(() {});
  }

  void veracruz() {
    status = false;
    valueRamdom = rng.nextInt(40);
    celciousTemp = valueRamdom.toDouble();
    finalTemp = celciousTemp;
    if (finalTemp >= 30) {
      nameClim = "warm";
    } else if (finalTemp <= 10) {
      nameClim = "snowy";
    } else {
      tempText = list[rng.nextInt(list.length)];
      nameClim = tempText;
    }
    nameCountry = "Veracruz";

    setState(() {});
  }

  void celsiusF() {
    status = true;
    textButton = "°F";
    //Ramdom
    //valueRamdom = rng.nextInt(30);
    resultado = (finalTemp * 1.8) + 32;
    fahrenheit = resultado;
    //value = fahrenheit.toString();
    finalTemp = fahrenheit;

    setState(() {});
  }

  void fahrenheitF() {
    status = false;
    textButton = "°C";
    //Ramdom
    resultado = (finalTemp - 32) * 0.5556;
    celciousTemp = resultado;
    finalTemp = celciousTemp;

    setState(() {});
  }

//Todo el cuerpo
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(125, 124, 179, 250),
      body: ControlsTemp(
        nameClim: nameClim,
        finalTemp: finalTemp,
        nameCountry: nameCountry,
        textbutton: textButton,
        status: status,

        //LAS FUNCIONES SE IGUALAN A LAS VARIABLES DEClARADAS Y QUE ESPERA LA CLASE
        celsiusF: celsiusF,
        fahrenheitF: fahrenheitF,
      ),

// ControlsButon lo unico que hara es cambiar el nombre de la ciudad
      bottomNavigationBar: controlsbutton(
        countryName: nameCountry,
        finalTemp: finalTemp,
        climName: nameClim,
        mexico: mexic,
        yucatan: yucatan,
        monterrey: monterrey,
        sonora: sonora,
        veracruz: veracruz,
      ),
    ); //Crearemos el butommavigationbar con 5 botones para cada estado(lugares)
  }
}
