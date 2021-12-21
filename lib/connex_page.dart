import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'animation.dart';
import 'main.dart';
import'login_page.dart';


class ConnexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
            icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
            ),
            onPressed: (){
              Navigator.pop(context);

        },
        ),
     ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              AnimationRetard(
              delay :400,
              child: Container(
                height: 200,
                child: Image.asset('images/crown.png')
          ),
      ),
              AnimationRetard(
                  delay :400,
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 40,
                      horizontal: 30,
                    ),
                        child: Column(
                          children: [
                            Text(
                            "Find the Rolex you want",
                            style: GoogleFonts.poppins(
                              color: d_green,
                                fontSize:16,
                              fontWeight: FontWeight.w600
                            ),
                            ),
                            SizedBox(height: 10),
                            Text(
                          "And found the shop that sells it",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize:15,
                          ),
                          ),
                          ]
                        )
                  )
              ),
              AnimationRetard(
                  delay: 800,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 40,
                    ),
                    child: Column(
                      children: [
                        ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              primary: d_green,
                              padding: EdgeInsets.all(13),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.mail_outline_outlined),
                                SizedBox(width: 10),
                                Text(
                                    'Email',
                                    style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize:16,
                                    fontWeight: FontWeight.w600
                                ),
                                ),
                              ],
                            )
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              primary: Color(0xFF576dff),
                              padding: EdgeInsets.all(13),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FaIcon(FontAwesomeIcons.facebook),
                                SizedBox(width: 10),
                                Text(
                                    'Facebook',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize:16,
                                      fontWeight: FontWeight.w600
                                ),
                                )
                              ],
                            )
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                            );
                          },
                            style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              primary: Colors.white,
                              padding: EdgeInsets.all(13),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              Image.asset(
                                'images/google.png',
                                height: 20,
                              ),
                                SizedBox(width: 10),
                                Text(
                                    'Google',
                                    style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize:16,
                                    fontWeight: FontWeight.w600
                                    ),
                                ),
                             ] ,
                            ),
                        ),
                        SizedBox(height: 20),
                      ],
                  ),
              ),
              ),
            ],
          ),
    ),
    );
  }
}

