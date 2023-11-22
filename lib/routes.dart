import 'package:flutter/material.dart';
import 'package:test_trek_tracer/screens/connexion_screen.dart';
import 'package:test_trek_tracer/screens/historique_screen.dart';
import 'package:test_trek_tracer/screens/home_screen.dart';
import 'package:test_trek_tracer/screens/parametre_screen.dart';
import 'package:test_trek_tracer/screens/profile_screen.dart';
import 'package:test_trek_tracer/screens/register_screen.dart';
import 'package:test_trek_tracer/screens/welcome_screen.dart';

Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (context) => const WelcomeScreen(),
  ConnexionScreen.routeName: (context)=> const ConnexionScreen(),
  HomeScreen.routeName:(context)=> const HomeScreen(),
  RegisterScreen.routeName: (context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, bool>;
    final isLogin = args['isLogin'] ?? true;
    return RegisterScreen(isLogin: isLogin);

  },
  HistoriqueScreen.routeName:(context)=>const HistoriqueScreen(),
  ParametreScreen.routeName:(context)=>const ParametreScreen(),
  ProfileScreen.routeName:(context)=>const ProfileScreen(),

};
