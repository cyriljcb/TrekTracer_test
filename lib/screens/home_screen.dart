import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:test_trek_tracer/screens/parametre_screen.dart';
import 'package:test_trek_tracer/screens/profile_screen.dart';
import 'package:test_trek_tracer/screens/start_button.dart';
import '../OpenStreetMap/affichage_map.dart';
import 'historique_screen.dart';
import 'package:location/location.dart' as loc;


class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TrekTracer'),
        backgroundColor: Colors.orangeAccent,
        // Ajouter le bouton hamburger à la barre d'applications
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                // Ouvrir le Drawer lorsqu'on clique sur le bouton hamburger
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      // Ajouter le Drawer pour le menu burger
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.symmetric(),
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
              ),
              child: Text('Menu'),
            ),
            ListTile(
              title: const Text('historique'),
              onTap: () {
                Navigator.pushNamed(context, HistoriqueScreen.routeName);
              },
            ),
            ListTile(
              title: const Text('Profil'),
              onTap: () {
                // Ajoutez ici le code à exécuter lorsque l'option 2 est sélectionnée
                Navigator.pushNamed(context, ProfileScreen.routeName);
              },
            ),
            ListTile(
              title: const Text('Paramètres'),
              onTap: () {
                Navigator.pushNamed(context, ParametreScreen.routeName); // Naviguer vers le profil
              },
            )
          ],
        ),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Center(
              //   child: Text('Contenu principal de l\'application'),
              // ),

              Expanded(
                  child: AfficheMap(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  StartButton(text: "démarrer", adem: true,),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }

  launchUrl(Uri parse) {}
}