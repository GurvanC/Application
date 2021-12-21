import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'animation.dart';
import 'main.dart';
import 'connex_page.dart';
import 'home_page.dart';

class accueil extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'Find a rolex shop',
      home: HomePageApp(),);

      }
}

class HomePageApp extends StatelessWidget {
     @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
             child: Column(
            children: [

                 SearchBar(),
                    RolexSelection(),
          ],
         ),
      ),

         bottomNavigationBar: BottomNavBarSection(),
          );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Column(
         children: [
           Row(
             children: [
                 Expanded(
                  child: Container(
                  padding: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                          blurRadius: 5,
                        offset: Offset(0, 2),
                        ),
                    ],
                   ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Exact search',
                      hintStyle: GoogleFonts.poppins(
                          color: Colors.grey,
                      ),
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                     ),
                  ),

                ),
               ),

              SizedBox(width: 10),
              Container(
                  height: 50,
                 width: 50,
                  decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                       color: Colors.grey.shade300,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      ),
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                   ),
                 ),
                 child: ElevatedButton(
                  onPressed: () {
                   },
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 26,
                  ),
                  style: ElevatedButton.styleFrom(
                     padding: EdgeInsets.all(10),
                    shape: CircleBorder(),
                    shadowColor: Colors.white,
                     primary: d_green,
                   ),
                 ),
               )
            ],
          ),

        ],
      ),

     );
  }
}


class RolexSelection extends StatelessWidget {
  final List RolexList = [ // déclaration de la liste pour appliquer les memes paramétres a tout les éléments de la liste
    {
        'title': 'Rolex Classics', //titre
      'picture': 'images/Rolexclass.png',//image
    },
     {
      'title': 'Rolex Professionals',
         'picture': 'images/Rolexpro.png',
    },
    {
        'title': 'Rolex Prestige',
       'picture': 'images/RolexPre.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
          children: [
          Container(
              height: 2,
            child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          Row(
            children: [
              Text(
                  'Choose your Rolex category.',
                style: GoogleFonts.poppins(
                     color: d_green,
                  fontSize: 26,
                    fontWeight: FontWeight.bold,


                ),
              ),
            ],
          ),
          Column(
            children: RolexList.map((Rolex) {
              return RolexCard(Rolex);
            }).toList(),
            ),
        ],
        ),
    );
  }
}

class RolexCard extends StatelessWidget { //déclaration de la class avec l'utilisation de la RolexList
  final Map RolexData; // tous les éléments de la liste auront les mettres paramétrés de texte et de taille de photo
  RolexCard(this.RolexData);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
      height: 195,
      width: double.infinity,
       decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.all(
           Radius.circular(18),
        ),
        boxShadow: [
          BoxShadow(
             color: Colors.grey.shade200,
            spreadRadius: 4,
             blurRadius: 6,
              offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
          children: [
          Container(
            height: 140,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
                ),
              image: DecorationImage(
                image: AssetImage(
                  RolexData['picture'],
                ),
                  fit: BoxFit.cover,
              ),
             ),
              child: Stack(
              children: [
                Positioned(
                  top: 5,
                  right: -15,
                  child: MaterialButton(
                    color: Colors.white,
                      shape: CircleBorder(),
                     onPressed: () {},
                      child: Icon(
                      Icons.favorite_outline_rounded,
                        color: d_green,
                      size: 20,
                     ),
                   ),
                )
                 ],
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(

                  RolexData['title'],
                  style: GoogleFonts.poppins(
                        color: d_green,
                    fontSize: 18,

                    ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavBarSection extends StatelessWidget { //déclaration de la bottom bar
  @override
  Widget build(BuildContext context) {
       return BottomNavigationBar(
        selectedItemColor: Colors.grey[700],
         items: [
         BottomNavigationBarItem(
          icon: Icon(
             Icons.home, //icone de la maison grace a la library
            color: d_green,
           ),
             label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
               Icons.favorite_outline_rounded,
            color: d_green,
             ),
          label: 'Favorite',
          ),
        BottomNavigationBarItem(
             icon: Icon(
                  Icons.person_outline_rounded,
            color: d_green,
           ),
          label: 'Profile',
          ),
             ],
      );
    }
}
