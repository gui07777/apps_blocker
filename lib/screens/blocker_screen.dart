import 'package:flutter/material.dart';

class BlockerScreen extends StatelessWidget {
  const BlockerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Configurações de bloqueio')),
      body: SafeArea(child: Padding(padding: const EdgeInsets.all(24.0))),
    );
  }
}
