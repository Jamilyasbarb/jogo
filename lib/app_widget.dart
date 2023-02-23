import 'package:flutter/material.dart';
import 'package:jogo/controllers/timer_controller.dart';
import 'package:jogo/pages/config/config_page.dart';
import 'package:jogo/pages/home/home_page.dart';
import 'package:jogo/pages/jogo/jogo_page.dart';
import 'package:provider/provider.dart';

class AppWidet extends StatelessWidget {
  const AppWidet({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TimerController(),)
      ],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Montserrat'
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          'jogo': (context) => JogoPage(),
          'config': (context) => ConfigPage(),
        },
      ),
    );
  }
}