import 'package:flutter/material.dart';

class HistoriqueScreen extends StatelessWidget {
  static const routeName = '/historique';

  const HistoriqueScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historique'),
      ),
      body: const Center(
        child: Text('Ceci est l\'écran de l\'historique'),
      ),
    );
  }
}
