import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; //importation de la library de police google
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; //importation de la library de police awesome
import 'package:projet/accueil.dart';
import 'animation.dart';
import 'main.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // parametrage de la bar en top
        elevation: 0, //position
          backgroundColor: Colors.white.withOpacity(0), // déclaration de la couleur et l'opacité de la barre
        leading: IconButton(
          icon: Icon(
            Icons.close, //boutton croix
             color: Colors.black, // de couleur noir
            size: 30,// de taille 30
          ),
          onPressed: () { // pour que l'on puisse cliquer dessus
            Navigator.pop(context); //direction lors du clique
          },
        ),
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 30,
              ),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                  AnimationRetard( // declaration de l'annimation faite depuis la page animation
                    delay: 500, // retard de 5s
                      child: Text(
                      "Connect email address", // texte
                      style: GoogleFonts.poppins( //déclaration de la police
                          color: d_green, //utilisation de la couleur déclaré dans le fichier main
                          fontSize: 25, //taille de la police
                        fontWeight: FontWeight.w600, //épaisseur
                      ),
                      ),
                  ),
                  SizedBox(height: 22),
                  AnimationRetard( // encore une phrase et meme fonctionnement que au dessus.
                    delay: 500,
                    child: Text(
                       "Please enter your username and password to connect.",
                      style: GoogleFonts.poppins(
                        color: Colors.grey[600],
                          fontSize: 16,
                         fontWeight: FontWeight.w500,
                      ),
                      ),
                   ),
                  ],
               ),
               ),
            SizedBox(height: 35),
               LoginForm(),
             SizedBox(height: 125),
              AnimationRetard(
               delay: 1000,
               child: ElevatedButton( // déclaration d'un boutton
                 style: ElevatedButton.styleFrom(
                     shape: StadiumBorder(), // forme
                  primary: d_green, // couleur
                  padding: EdgeInsets.symmetric( //postition
                      horizontal: 125,
                    vertical: 13,
                  ),
                  ),
                child: Text(
                    'CONFIRM',
                   style: GoogleFonts.poppins(
                       color: Colors.white,
                        fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                 onPressed: () { //bouton cliquable
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => accueil(), //direction du bouton
                       ),
                   );
                },
               ),
            ),

           ],
         ),
      ),
     );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
         horizontal: 30,
      ),
       child: Column(
         children: [
          AnimationRetard(
              delay: 500,
              child: TextField(
              decoration: InputDecoration(
                  labelText: 'Your Email',
                 labelStyle: TextStyle(
                     color: Colors.grey[400],
                     ),
              ),
              ),
          ),
          SizedBox(height: 30),
           AnimationRetard(
                delay: 500,
            child: TextField(
                obscureText: _obscureText,
                  decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: Colors.grey[400],
                   ),
                labelText: 'Password',
                 suffixIcon: IconButton(
                     icon: Icon(
                    Icons.visibility,
                    color: Colors.black,
                   ),
                  onPressed: () {
                    setState(() {
                       _obscureText = !_obscureText;
                    });
                   },
                    ),
               ),
               ),
           ),
           ],
        ),
     );
  }
}
