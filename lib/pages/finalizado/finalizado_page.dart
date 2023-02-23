import 'package:flutter/material.dart';

class FinalizadoPage extends StatefulWidget {
  const FinalizadoPage({super.key});

  @override
  State<FinalizadoPage> createState() => _FinalizadoPageState();
}

class _FinalizadoPageState extends State<FinalizadoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Text('9', style: Theme.of(context).textTheme.headlineLarge,),
                  Text('Pontos', style: Theme.of(context).textTheme.titleMedium,)
                ],
              ) 
            ),
            Expanded(child: Column(
              children: [
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).pushReplacementNamed('/');
                      }, 
                      child: Text('Menu'),
                    ),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).pushReplacementNamed('jogo');
                      }, 
                      child: Text('Jogar Novamente'),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: (){}, 
                  child: Text('Compartilhar')
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}