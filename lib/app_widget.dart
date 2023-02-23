import 'package:flutter/material.dart';
import 'package:jogo/pages/config/config_page.dart';
import 'package:jogo/pages/home/home_page.dart';
import 'package:jogo/pages/jogo/jogo_page.dart';

class AppWidet extends StatelessWidget {
  const AppWidet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Montserrat'
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        'jogo': (context) => JogoPage(),
        'config': (context) => ConfigPage(),
      },
    );
  }
}