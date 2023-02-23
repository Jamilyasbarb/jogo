import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jogo/controllers/timer_controller.dart';
import 'package:jogo/pages/config/config_page.dart';
import 'package:provider/provider.dart';
import 'dart:math' as math;

class JogoPage extends StatefulWidget {
  const JogoPage({super.key});

  @override
  State<JogoPage> createState() => _JogoPageState();
}

class _JogoPageState extends State<JogoPage> {
  int contador = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  String cor = '';

    getCor(){
      if (contador == opcoesCores.length) {
        contador = 0;
      }
      Timer(Duration(milliseconds: 3000), () {
        contador++;
       });

       return opcoesCores[contador];
    }

  @override
  Widget build(BuildContext context) {
    final controllerTimer = context.watch<TimerController>();
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Pontos',
                    style: Theme.of(context).textTheme.titleLarge
                  ),
                  Text('${controllerTimer.digitHora}:${controllerTimer.digitMinutos}:${controllerTimer.digitSecundos}',
                    style: Theme.of(context).textTheme.titleLarge
                  ),
                ],
              )
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('${controllerTimer.cor}',
                    style: TextStyle(
                      color: controllerTimer.color,
                      fontSize: 40,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        color: controllerTimer.cor == 'Amarelo' ? Colors.yellow : controllerTimer.cor == 'Vermelho' ? Colors.red : controllerTimer.container1,
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        color: controllerTimer.cor == 'Azul' ? Colors.blue : controllerTimer.cor == 'Verde' ? Colors.green : controllerTimer.container2,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        color: controllerTimer.cor == 'Laranja' ? Colors.orange :  controllerTimer.cor == 'Roxo' ? Colors.purple : controllerTimer.container3
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        color: controllerTimer.cor == 'Preto' ? Colors.black : controllerTimer.container4,
                      ),
                    ],
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}