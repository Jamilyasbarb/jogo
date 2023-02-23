import 'package:flutter/material.dart';

List<String> opcoesDrop = [
    'Por Tempo',
    'Por Palavra',
  ];

class ConfigPage extends StatefulWidget {
  const ConfigPage({super.key});

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  List<String> opcoesCores = [
    'Amarelo',
    'Laranja',
    'Verde',
    'Azul',
    'Vermelho',
    'Roxo',
    'Preto',
  ];

  List<bool> check = [];
  
  String opcaoSelecionadaDrop = opcoesDrop.first;

  @override
  void initState() {
    super.initState();
    check = List<bool>.filled(opcoesCores.length, false);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        // height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Container(
          margin: EdgeInsets.all(50),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Duraçao da Partida', style: Theme.of(context).textTheme.titleLarge,),
                    DropdownButton(
                      value: opcaoSelecionadaDrop,
                      onChanged: (String? value) {
                        setState(() {
                          opcaoSelecionadaDrop = value!;
                        });
                      },
                      items: opcoesDrop.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value), 
                        );
                      }).toList(), 
                    ),
                    Text('Exibicao da Palavra'),
                    SizedBox(
                      height: 30,
                      width: 100,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder()
                        ),
                      ),
                    ),
                  ],
                ) 
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Text('Cores Disponibilizadas'),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: opcoesCores.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              CheckboxListTile(
                                controlAffinity: ListTileControlAffinity.leading,
                                title: Text(opcoesCores[index]),
                                value: check[index], 
                                onChanged: (value) {
                                  setState(() {
                                    check[index] = value!;
                                  });
                                },
                              ),
                            ],
                          );
                        }, 
                      ),
                    ),
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}