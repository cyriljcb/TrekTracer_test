import 'package:flutter/material.dart';

class ParametreScreen extends StatelessWidget {
  static const routeName = '/param';

  const ParametreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paramètre'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Text('Ceci est l\'écran des paramètres'),
          ),
          Row(
            children: [Text("paramètres avancé",selectionColor: Colors.cyan,)],
          ),
          Row(children: [Text("Notifications")],)
        ],
      ),
    );
  }
}
