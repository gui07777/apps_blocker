import 'package:apps_blocker/screens/blocker_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _step = 1;

  void _changeStep() {
    setState(() {
      _step++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    if (_step == 1) ...[
                      const Spacer(flex: 1),
                      Image.asset('assets/images/apps_blocker_img1.png'),
                      SizedBox(height: 20),
                      const Text(
                        'Bem-vindo ao [Nome do App]',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Queremos ajudar você a construir uma relação mais saudável com o seu celular, bloqueando distrações e reduzindo o impacto dos vínculos digitais no seu dia a dia.',
                        textAlign: TextAlign.center,
                      ),
                      const Spacer(flex: 2),
                    ] else if (_step == 2) ...[
                      const Spacer(flex: 1),
                      Image.asset('assets/images/apps_blocker_img2.png'),
                      SizedBox(height: 20),
                      const Text(
                        'Como vamos te proteger:',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        '• Foco sob medida: Bloqueie redes sociais, jogos e aplicativos específicos nos momentos em que você mais precisa se concentrar.',
                      ),
                      const Text(
                        '• Rotinas inteligentes: Agende horários de bloqueio automático para o trabalho, estudos ou antes de dormir.',
                      ),
                      const Text(
                        '• Mais bem-estar: Substitua o hábito de rolar a tela sem fim por momentos reais de descanso e produtividade.',
                      ),
                      const Spacer(flex: 2),
                    ] else if (_step == 3) ...[
                      const Spacer(flex: 1),
                      Image.asset('assets/images/apps_blocker_img3.png'),
                      SizedBox(height: 10),
                      const Text(
                        'Simples e Rápido!',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        '• Selecione os aplicativos que serão bloqueados.',
                      ),
                      const Text(
                        '• Selecione o tempo limite que você poderá usá-lo.',
                      ),
                      const Text('• Nós fazemos o resto.'),
                      SizedBox(height: 50),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BlockerScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.purple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          fixedSize: Size(220, 40),
                        ),
                        child: Text('Começar'),
                      ),
                      const Spacer(flex: 1),
                    ],
                  ],
                ),
              ),
              if (_step != 3)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (context) => const BlockerScreen(),
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                      ),
                      child: Text('Pular'),
                    ),
                    ElevatedButton(
                      onPressed: _changeStep,
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.purple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text('Próximo'),
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
