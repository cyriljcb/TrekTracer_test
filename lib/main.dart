import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_trek_tracer/main_button.dart';
import 'package:test_trek_tracer/routes.dart';
import 'package:test_trek_tracer/style/font.dart';
import 'package:test_trek_tracer/style/spacings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: routes,
    );
  }
}

