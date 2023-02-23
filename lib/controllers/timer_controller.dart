import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math' as math;

import 'package:jogo/pages/config/config_page.dart';

class TimerController extends ChangeNotifier{
  Timer? timer;
  String cor ='';
  int contador = 0;
  int tempo = 3;
  int secundos = 0, minutos = 0, hora = 0; 
  String digitSecundos = '00', digitMinutos ='00', digitHora ='00';
  Color color = Color(0xFFFFFF); 
  Color container1 = Color(0xFFFFFF); 
  Color container2 = Color(0xFFFFFF); 
  Color container3 = Color(0xFFFFFF); 
  Color container4 = Color(0xFFFFFF); 

  iniciaTempoPadrao(){
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      int localSecundos = secundos + 1;
    if(tempo == 3){
        tempo = 0;
        cor = opcoesCores[contador];
        color = Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
        container1 = Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
        container2 = Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
        container3 = Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
        container4 = Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
        contador++;
        if (contador == opcoesCores.length) {
          contador =0;
        }
      }
      if(localSecundos >= 30 ){
        timer.cancel();
      }

      tempo++;
      secundos = localSecundos;
      digitSecundos = (secundos >= 10)? '$secundos' : '0$secundos';
      notifyListeners();
     });
  }
}