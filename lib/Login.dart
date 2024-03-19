import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:userinterface1/Homepage.dart';
import 'package:userinterface1/detailspage.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(

      body: Stack(
        children: [
          // Background image
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'Images/peakpx.jpg',
              fit: BoxFit.cover,
            ),
          ),

          Center(
            child: GlassContainer.frostedGlass(
              borderColor: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              width: screenWidth * 0.9,
              height: screenHeight * 0.9,
              blur: 80,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Image.asset(
                      'Images/logo2.png',
                      fit: BoxFit.cover,
                    ),
                    Column(
                      children: [
                        Text(
                          "Swift",
                          style: TextStyle(color: Colors.white, fontSize: 50),
                        ),
                        Text(
                          "Cafe`",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        //SizedBox(height: 10),
                        GlowText(
                          '"Latte but never late"',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                   // SizedBox(height: 30),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: TextField(
                            decoration: InputDecoration(
                             labelText: "User Name",
                              labelStyle: TextStyle(color: Colors.white),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                )),
                            ),

                          ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Password",
                                labelStyle: TextStyle(color: Colors.white),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                )),
                          ),

                        ),

                      ],
                    ),

                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Handle button press
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));

                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 15, horizontal: 40),
                        primary: Colors.transparent, // Make the button transparent
                        elevation: 0, // Remove the default elevation
                        shadowColor:
                        Colors.transparent, // Remove the shadow
                        onPrimary: Colors.white, // Text color
                      ),
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors: [
                              Color(0xFFa67556),
                              Color(0xFF704f3a),

                            ],
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Home',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,

                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20), // Add some space between the buttons
                   Container(
                     width: 200,
                     height: 40,
                     child: OutlinedButton(onPressed: ()=>{
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()))
                     },

                         style: ButtonStyle(
                           shape: MaterialStateProperty.all<OutlinedBorder>(
                             RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(20.0),
                             ),
                           ),
                           side: MaterialStateProperty.all<BorderSide>(
                             BorderSide(color: Colors.white),
                           ),
                         ),
                         child: Text("Detailpage",style: TextStyle(color: Colors.white),)),
                   ),
                    SizedBox(height: 10,),
                    Text("Privacy Policy",style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
