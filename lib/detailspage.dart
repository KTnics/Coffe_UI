import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

import 'nav2.dart';
class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final List<String> emptyList = [];
    bool switchValue = false;


    return Scaffold(
      body: Column(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight*0.25,
            child: Image.asset(
              'Images/Tea2.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Stack(


            children: [
              Container(
                width: screenWidth,
                height: screenHeight*0.75,
                child: Image.asset(
                  'Images/peakpx.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: GlassContainer.frostedGlass(height: screenHeight*0.75, width: screenWidth,
                  borderColor: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("latte",style: TextStyle(color: Colors.white60,fontSize: 20),),
                                  Row(
                                    children: [
                                      Text("4.9⭐ [456]"),
                                      SizedBox(width: 30,),
                                      Icon(Icons.circle,color: Colors.greenAccent,)
                                    ],
                                  ),

                                ],
                              ),
                              DropdownButton<String>(
                                style: TextStyle(
                                  color: Colors.white60
                                ),
                                items: emptyList.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text('No Values'),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  print('Selected: $newValue');
                                },
                              ),

                            ],
                          ),
                          Row(
                            children: [
                             Text( '\n''Coffe late is codfe made with one of the two shots of''.\n'
                                 ' expresso.steamed milk anf layer of casshew '
                                 ,style: TextStyle(color: Colors.white60),)
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text("Choice of cup filling",style: TextStyle(color: Colors.white60,fontSize: 20),)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.green, // Set green background
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5), // Rectangular shape
                                  ),
                                ),
                                child: Text('Full'),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white60, // Set green background
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5), // Rectangular shape
                                  ),
                                ),
                                child: Text('1/2 Full'),
                              ),  ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white60, // Set green background
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5), // Rectangular shape
                                  ),
                                ),
                                child: Text('3/4 Full'),
                              ),  ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white60, // Set green background
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5), // Rectangular shape
                                  ),
                                ),
                                child: Text('1/4 Full'),
                              ),
                              SizedBox(width: 50,)
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text("Choice of Milk",style: TextStyle(color: Colors.white60,fontSize:20 ),)
                            ],
                          ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Column(
                               children: [
                                 Row(
                                   children: [
                                     Transform.scale(
                                       scale: 0.8,
                                       child: Switch(
                                         value: switchValue,
                                         onChanged: (newValue) {
                                           setState(() {
                                             switchValue = newValue;
                                           });
                                         },



                                       ),
                                     ),
                                     SizedBox(width: 5,),


                                   ],
                                 ),
                                 Row(
                                   children: [
                                     Transform.scale(
                                       scale: 0.8,
                                       child: Switch(
                                         value: switchValue,
                                         onChanged: (newValue) {
                                           setState(() {
                                             switchValue = newValue;
                                           });
                                         },



                                       ),
                                     ),
                                     SizedBox(width: 5,),
                                     //Text("almond milk",style: TextStyle(color: Colors.white60),textAlign: TextAlign.right,)

                                   ],
                                 ),
                                 Row(
                                   children: [
                                     Transform.scale(
                                       scale: 0.8,
                                       child: Switch(
                                         value: switchValue,
                                         onChanged: (newValue) {
                                           setState(() {
                                             switchValue = newValue;
                                           });
                                         },



                                       ),
                                     ),
                                     SizedBox(width: 5,),
                                     //Text("soy milk",style: TextStyle(color: Colors.white60),)

                                   ],
                                 ),
                                 Row(
                                   children: [
                                     Transform.scale(
                                       scale: 0.8,
                                       child: Switch(
                                         value: switchValue,
                                         onChanged: (newValue) {
                                           setState(() {
                                             switchValue = newValue;
                                           });
                                         },



                                       ),
                                     ),
                                     SizedBox(width: 5,),
                                     //Text("lactos free milk",style: TextStyle(color: Colors.white60),)

                                   ],
                                 ),
                               ],
                             ),
                             Column(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text("skim milk",style: TextStyle(color: Colors.white60),textAlign: TextAlign.right,),
                                   SizedBox(height: 20,),
                                   Text("soy milk",style: TextStyle(color: Colors.white60),textAlign: TextAlign.right,),
                                   SizedBox(height: 20,),
                                   Text("salmond milk",style: TextStyle(color: Colors.white60),textAlign: TextAlign.right,),
                                   SizedBox(height: 20,),
                                   Text("lactos milk",style: TextStyle(color: Colors.white60),textAlign: TextAlign.right,)

                                 ],
                               )
                               ],
                             ),
                             Column(
                               children: [
                                 Row(
                                   children: [
                                     Transform.scale(
                                       scale: 0.8,
                                       child: Switch(
                                         value: switchValue,
                                         onChanged: (newValue) {
                                           setState(() {
                                             switchValue = newValue;
                                           });
                                         },



                                       ),
                                     ),
                                     SizedBox(width: 5,),


                                   ],
                                 ),
                                 Row(
                                   children: [
                                     Transform.scale(
                                       scale: 0.8,
                                       child: Switch(
                                         value: switchValue,
                                         onChanged: (newValue) {
                                           setState(() {
                                             switchValue = newValue;
                                           });
                                         },



                                       ),
                                     ),
                                     SizedBox(width: 5,),
                                     //Text("almond milk",style: TextStyle(color: Colors.white60),textAlign: TextAlign.right,)

                                   ],
                                 ),
                                 Row(
                                   children: [
                                     Transform.scale(
                                       scale: 0.8,
                                       child: Switch(
                                         value: switchValue,
                                         onChanged: (newValue) {
                                           setState(() {
                                             switchValue = newValue;
                                           });
                                         },



                                       ),
                                     ),
                                     SizedBox(width: 5,),
                                     //Text("soy milk",style: TextStyle(color: Colors.white60),)

                                   ],
                                 ),

                               ],
                             ),
                             Column(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                Padding(padding: EdgeInsets.only(right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("full cream",style: TextStyle(color: Colors.white60),textAlign: TextAlign.right,),
                                    SizedBox(height: 20,),
                                    Text("full cream",style: TextStyle(color: Colors.white60),textAlign: TextAlign.right,),
                                    SizedBox(height: 22,),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text("lactos",style: TextStyle(color: Colors.white60),textAlign: TextAlign.right,),
                                    ),
                                    SizedBox(height: 20,),

                                  ],
                                ),
                                )
                               ],
                             ),
                           ],
                         ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text("Choice of Sugar",style: TextStyle(color: Colors.white60,fontSize:20 ),)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Transform.scale(
                                        scale: 0.8,
                                        child: Switch(
                                          value: switchValue,
                                          onChanged: (newValue) {
                                            setState(() {
                                              switchValue = newValue;
                                            });
                                          },



                                        ),
                                      ),
                                      SizedBox(width: 5,),


                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Transform.scale(
                                        scale: 0.8,
                                        child: Switch(
                                          value: switchValue,
                                          onChanged: (newValue) {
                                            setState(() {
                                              switchValue = newValue;
                                            });
                                          },



                                        ),
                                      ),
                                      SizedBox(width: 5,),
                                      //Text("almond milk",style: TextStyle(color: Colors.white60),textAlign: TextAlign.right,)

                                    ],
                                  ),

                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("sugar x2",style: TextStyle(color: Colors.white60),textAlign: TextAlign.right,),
                                  SizedBox(height: 20,),
                                  Text("no sugar",style: TextStyle(color: Colors.white60),textAlign: TextAlign.right,),


                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Transform.scale(
                                        scale: 0.8,
                                        child: Switch(
                                          value: switchValue,
                                          onChanged: (newValue) {
                                            setState(() {
                                              switchValue = newValue;
                                            });
                                          },



                                        ),
                                      ),
                                      SizedBox(width: 5,),


                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Transform.scale(
                                        scale: 0.8,
                                        child: Switch(
                                          value: switchValue,
                                          onChanged: (newValue) {
                                            setState(() {
                                              switchValue = newValue;
                                            });
                                          },



                                        ),
                                      ),
                                      SizedBox(width: 5,),
                                      //Text("almond milk",style: TextStyle(color: Colors.white60),textAlign: TextAlign.right,)

                                    ],
                                  ),

                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(padding: EdgeInsets.only(right: 20),
                                  child: Column(
                                    children: [
                                      Text("Sugar x1",style: TextStyle(color: Colors.white60),textAlign: TextAlign.right,),
                                      SizedBox(height: 20,),
                                      Text("1x2 sugar",style: TextStyle(color: Colors.white60),textAlign: TextAlign.right,),

                                    ],
                                  ),
                                  )


                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 90,)


                        ],
                      ),
                    ),
                  ),
                ),


              ),
              Container(
                 height: screenHeight*0.75,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: nav2(),
                ),
              )





            ],
          ),

        ],
      ),);
  }

  void setState(Null Function() param0) {}
}