import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(child: Text("Chiang Mai")),
          backgroundColor: Color.fromARGB(255, 45, 45, 45),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new),
            color: Color.fromARGB(255, 248, 132, 132),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.ios_share),
              color: Color.fromARGB(255, 248, 132, 132),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border),
              color: Colors.white,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
          children: [
            SizedBox(height: 10,),
            Container(             
              child: ImageSlideshow(
              width: double.infinity,
              height: 220,
              initialPage: 0,
              indicatorColor: Colors.white,
              indicatorBackgroundColor: Colors.grey,
              children: [
                Image.asset(
                  'assets/images/hotel-from-pool-area.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/lobby-lounge--v3795323.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/shangri-la-hotel-chiang-mai-21_7100.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/1.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/2.jpg',
                  fit: BoxFit.cover,
                ),
              ],
              onPageChanged: (value) {
                print('Page changed: $value');
              },
              autoPlayInterval: 3000,
              isLoop: true,
            ),
            
            ),
            Container(
              child: SizedBox(height: 25),
            ),
            Container(            
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text("UNESCO Sustainable Travel Pledge", style: TextStyle(color: Color.fromARGB(255, 186, 186, 186), fontSize: 14),),
                    ],
                  ),
                ),
              ),
            Container(            
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text("Shangri-La Chiang Mai", style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
              Container(            
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Color.fromARGB(255, 186, 186, 186), size: 18 ,),
                      Icon(Icons.star,color: Color.fromARGB(255, 186, 186, 186), size: 18),
                      Icon(Icons.star,color: Color.fromARGB(255, 186, 186, 186), size: 18 ),
                      Icon(Icons.star,color: Color.fromARGB(255, 186, 186, 186), size: 18 ),
                      Icon(Icons.star, color: Color.fromARGB(255, 186, 186, 186), size: 18, )
                    ],
                  ),
                ),
              ),
              Container(            
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text("Luxury hotel with free water park, near\nChaing Mai Night Bazaar", style: TextStyle(color: Color.fromARGB(255, 186, 186, 186), fontSize: 22.5))
                    ],
                  ),
                ),
              ),
              Container(
                child: SizedBox(height: 30),
              ),
              Container(            
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      SizedBox(height: 50,),
                      Text("9.0/10 Superb", style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
              Container(            
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text("1,000 verified Hotels.com guest reviews", style: TextStyle(color: Color.fromARGB(255, 186, 186, 186), fontSize: 16.5),),
                    ],
                  ),
                ),
              ),
              Container(            
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      SizedBox(height: 50,),
                      Text("See all 1,000 reviews  ", style: TextStyle(color: Color.fromARGB(255, 143, 219, 254), fontSize: 16.5),),
                      Icon(Icons.arrow_forward_ios_rounded, color: Color.fromARGB(255, 143, 219, 254), size: 16.5,)
                    ],
                  ),
                ),
              ),
              Container(            
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      SizedBox(height: 50,),
                      Text("Popular amenities", style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
              Container(            
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      SizedBox(height: 30,),
                      Icon(Icons.wifi, color: Color.fromARGB(255, 186, 186, 186), size: 25,),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Text("Free WiFi", style: TextStyle(color: Colors.white, fontSize: 19),),
                            Padding(
                              padding: EdgeInsets.only(left: 80),
                              child: Row(
                                children: [
                                  Icon(Icons.pool, color: Color.fromARGB(255, 186, 186, 186), size: 30,),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Text("Pool", style: TextStyle(color: Colors.white, fontSize: 19))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(            
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      SizedBox(height: 30,),
                      Icon(Icons.ac_unit_rounded, color: Color.fromARGB(255, 186, 186, 186), size: 25,),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Text("Air conditioning", style: TextStyle(color: Colors.white, fontSize: 19),),
                            Padding(
                              padding: EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Icon(Icons.drive_eta, color: Color.fromARGB(255, 186, 186, 186), size: 30,),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Text("Free parking", style: TextStyle(color: Colors.white, fontSize: 19))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(            
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      SizedBox(height: 30,),
                      Icon(Icons.fitness_center_outlined, color: Color.fromARGB(255, 186, 186, 186), size: 25,),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Text("Gym", style: TextStyle(color: Colors.white, fontSize: 19),),
                            Padding(
                              padding: EdgeInsets.only(left: 120),
                              child: Row(
                                children: [
                                  Icon(Icons.thermostat, color: Color.fromARGB(255, 186, 186, 186), size: 30,),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Text("Refrigerator", style: TextStyle(color: Colors.white, fontSize: 19))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.only(top: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset("assets/images/3.jpg", fit: BoxFit.cover,),
                ),
                             
              ),
          ],
        ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          foregroundColor: Colors.black,
          backgroundColor: Color.fromARGB(255, 163, 208, 239),
          onPressed: () {}, 
          label: Text("                        Select a room                          "),),
      ),
    );
  }
}