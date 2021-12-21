import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'animation.dart';
import 'main.dart';
import 'connex_page.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
              vertical: 60,
              horizontal: 30,
            ),
            child: Column(
              children: [
                AnimationRetard(
                  delay: 500,
                  child: Container(
                   height: 60,
                   child: Image.asset('images/rolex.png'),
                ),
                ),
                AnimationRetard(
                  delay: 750,
                  child: Container(
                    height: 300,
                    margin: EdgeInsets.only(
                       top: 40,
                    ),

                    child: Image.asset('images/montre.png'),
                  ),
                ),
                AnimationRetard(
                  delay: 500,
                  child: Container(
                      margin: EdgeInsets.only(
                      top: 30,
                      bottom: 20,
                    ),
                    child: Text(
                      "With each exploit its crown.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                           color: Colors.grey,
                           fontSize: 28,
                    )
                     ),
                  ),
                ),
                AnimationRetard(
                  delay: 500,
                  child: Container(
                    width: double.infinity,
                     child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                         primary: d_green,
                         shape: StadiumBorder(),
                         padding: EdgeInsets.all(16)),
                            child: Text('GET STARTED'),
                            onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ConnexPage (),
                             ),
                             );
                          },
                          )
                    )
                   ),
              ],
             )
          )
      )
    );
  }
}
