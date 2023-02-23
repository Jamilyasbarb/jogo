import 'package:flutter/material.dart';
import 'package:jogo/controllers/timer_controller.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final timer = context.watch<TimerController>();
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        timer.iniciaTempoPadrao();
                        Navigator.of(context).pushReplacementNamed('jogo');
                      }, 
                      child: Text('Jogar')
                    ),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).pushReplacementNamed('config');
                      }, 
                      child: Text('Configuraçoes')
                    ),
                    ElevatedButton(
                      onPressed: (){}, 
                      child: Text('Sair')
                    ),
                  ],
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}