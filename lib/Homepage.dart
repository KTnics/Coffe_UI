import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

import 'Navbar.dart';
import 'main.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [

          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'Images/peakpx.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              GlassContainer.frostedGlass(
                borderColor: Colors.transparent,
                width: screenWidth,
                height: screenHeight*0.2,
                blur: 30,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Image.asset(
                                "Images/hand.png",
                                fit: BoxFit.cover,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "16-03-24",
                                    style: TextStyle(color: Colors.white60, fontSize: 10),
                                  ),
                                  Text(
                                    "Joshua Scanland",
                                    style: TextStyle(color: Colors.white60, fontSize: 18),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.coffee_sharp),
                            Icon(Icons.account_circle)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          color: Colors.grey[200],
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.search),
                              onPressed: () {
                                // Handle search icon pressed
                              },
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.settings),
                              onPressed: () {
                                // Handle settings icon pressed
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GlassContainer.frostedGlass(
                height: screenHeight * 0.4,
                width: screenWidth,
                blur: 200,
                borderColor: Colors.transparent,
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Most Popular Beverages',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white60),
                      ),
                    ),
      CarouselSlider(
        items: [

          //1st Image of Slider

          GlassContainer.frostedGlass(
            height: 400,
            width: 200,
            borderColor: Colors.transparent,
            borderRadius: BorderRadius.circular(5),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0)
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                        height: 200,
                        width: 200,
                        child: Image.asset("Images/dish.png",)),
                  ),

                  Text("Hot cappicino",style: TextStyle(color: Colors.white60,fontSize: 20),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("expresso steamed milk",style: TextStyle(color: Colors.black,fontSize: 10),),
                          Text("4.9⭐ [456]")

                        ],
                      ),
                      Icon(Icons.add_box,color: Colors.greenAccent,)

                    ],
                  )


                ],
              ),
            ),
          ),



        ],

        //Slider Container properties
        options: CarouselOptions(
          height: 180.0,

          enlargeCenterPage: false,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.6,
        ),
      ),





    ],
                ),
              ),
      Flexible(
        child: GlassContainer.frostedGlass(
          width: screenWidth,
          height: screenHeight*0.4,
          borderColor: Colors.transparent,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Get it instantly',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white60),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: ListView.builder(
                  itemCount: 10, // Number of items in the list
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: SizedBox(
                        width: screenWidth,
                        height: 150,
                        child: GlassContainer.frostedGlass(
                          width: screenWidth*0.9,
                          height: 150,
                          borderColor: Colors.transparent,

                          borderRadius: BorderRadius.circular(12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Latte",style: TextStyle(color: Colors.white60,fontSize: 16),
                                        textAlign: TextAlign.left,),
                                        Row(
                                          children: [
                                            Text("4.9⭐ [456]"),
                                            SizedBox(width: 30,),
                                            Icon(Icons.circle,color: Colors.greenAccent,)
                                          ],
                                        ),
                                        Text(
                                          '\n''Coffe late is codfe made with''.\n'
                                              'one of the two shots of expresso.''\n'
                                          'steamed milk anf layer of ',
                                          textAlign: TextAlign.justify, // Align text justified
                                          style: TextStyle(fontSize: 10,color: Colors.white60), // Set font size
                                        ),


                                      ],
                                    ),

                                  ),

                                ],
                              ),
                              Container(
                                height: 100,


                                child:Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset("Images/Tea.jpg")
                                    ,
                                Align(

                                    alignment: Alignment.bottomCenter,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.green, // Background color
                                      ),

                                      onPressed: (){},
                                      child: Text("ADD",textAlign: TextAlign.center,),
                                    ),
                              ),
                                  ],
                                )
                              )
                            ],
                          )
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),


            ],
          ),
          Expanded(child: Align(
            alignment: Alignment.bottomCenter,
            child: nav(),
          ))

        ],
      ),
    );
  }
}
