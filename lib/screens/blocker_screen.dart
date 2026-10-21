import 'package:flutter/material.dart';

class BlockerScreen extends StatelessWidget {
  const BlockerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bloquear Apps',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Escolher Aplicativos & Tempo',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    spacing: 3,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Tempo Limite Diário',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextField(),
                            TextField(),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text('Ativar Bloqueio'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                'Lista de Bloqueios',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 180,
        height: 40,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.purple[100],
          foregroundColor: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 5,
            children: [Icon(Icons.add, size: 20,), Text('Escolher Aplicativos')],
          ),
        ),
      ),
    );
  }
}
