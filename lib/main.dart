import 'package:flutter/material.dart'; // importation de la library de flutter
import 'home_page.dart';// importation de la library (éléments) de ma page d'accueil

const d_green = const Color(0xFF006039); // déclaration de la couleur verte de Rolex par le nom d_green pour la suite du développement.
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rolex', // titre de l'appli
      debugShowCheckedModeBanner: false,
      home: HomePage(), //page de démarage de l'appli
    );
  }
}
