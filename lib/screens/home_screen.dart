import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _nextStep = false;

  void _changeStep() {
    setState(() {
      _nextStep = true;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              if (_nextStep == false) ...[
                const Text('Bem-vindo ao [Nome do App]'),
                const Text(
                  'Recupere o controle do seu tempo e viva com mais presença.',
                ),
                const Text(
                  'O [Nome do App] foi criado para ajudar você a construir uma relação mais saudável com o seu celular, bloqueando distrações e reduzindo o impacto dos vínculos digitais no seu dia a dia.',
                ),
              ] else ...[
                const Text('Como vamos te proteger:'),
                const Text(
                  'Foco sob medida: Bloqueie redes sociais, jogos e aplicativos específicos nos momentos em que você mais precisa se concentrar.',
                ),
                const Text(
                  'Rotinas inteligentes: Agende horários de bloqueio automático para o trabalho, estudos ou antes de dormir.',
                ),
                const Text(
                  'Mais bem-estar: Substitua o hábito de rolar a tela sem fim por momentos reais de descanso e produtividade.',
                ),
              ],
              Row(
                children: [
                  if (_nextStep == true) 
                  ElevatedButton(
                    onPressed: _changeStep,
                    child: const Icon(Icons.arrow_left),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: _changeStep,
                      child: const Icon(Icons.arrow_right),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
