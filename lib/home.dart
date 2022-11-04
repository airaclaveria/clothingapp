import 'package:clothing_app/productpage.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'productpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
          child: Column(
            children: <Widget>[
              Center(
                child: Row(
                  children: const <Widget>[
                    Icon(
                      Icons.menu,
                      color: Color(0xff333333),
                      size: 40.0,
                    ),
                    SizedBox(
                      width: 260,
                    ),
                    Icon(
                      Icons.search,
                      color: Color(0xff333333),
                      size: 40.0,
                    ),
                    Icon(
                      Icons.shopping_cart,
                      color: Color(0xff333333),
                      size: 40.0,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      //FIND YOUR STYLE WIDGET
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Find Your Style",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //BUTTONS WIDGET
                      Row(
                        children: <Widget>[
                          const Spacer(),
                          //button 1
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'All',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: StadiumBorder()),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          //button 2
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Summer',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: StadiumBorder()),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          //button 2
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Winter',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: StadiumBorder()),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Spring',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: StadiumBorder()),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Fall',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: StadiumBorder()),
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      //CAROUSEL STARTS HERE
                      ListView(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        children: <Widget>[
                          CarouselSlider(
                            items: [
                              //first image try
                              Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20.0),
                                  ),
                                  image: DecorationImage(
                                    image: ExactAssetImage(
                                      'images/1.jpeg',
                                    ),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),

                              //2nd image try
                              Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20.0),
                                  ),
                                  image: DecorationImage(
                                    image: ExactAssetImage('images/2.jpeg'),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),

                              //3rd image try
                              Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20.0),
                                  ),
                                  image: DecorationImage(
                                    image: ExactAssetImage('images/3.jpeg'),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ],

                            //slider container properties
                            options: CarouselOptions(
                              height: 300.0,
                              enlargeCenterPage: true,
                              autoPlay: true,
                              aspectRatio: 16 / 9,
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enableInfiniteScroll: true,
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 600),
                              viewportFraction: 0.4,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 35,
                      ),

                      Row(
                        children: const <Widget>[
                          Spacer(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Most Popular",
                              style: TextStyle(
                                fontSize: 35,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 130,
                          ),
                          Text(
                            'See All',
                            style: TextStyle(
                              color: Color(0xffDA9999),
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),

                      //DISPLAY CLOTHES
                      Row(
                        children: <Widget>[
                          Spacer(),
                          InkWell(
                            onTap: () {
                              Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(
                                  builder: (_) => ProductPage(),
                                ),
                              );
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Image.asset(
                                    'images/first.jpg',
                                    width: 179,
                                    height: 225,
                                  ),
                                  const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      'Long Sleeve',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          //CONTAINER 2
                          Container(
                            child: Column(
                              children: [
                                Image.asset(
                                  'images/2.jpeg',
                                  width: 179,
                                  height: 225,
                                ),
                                const Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    'Long Sleeve',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                        ],
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      //SECOND ROW
                      Row(
                        children: <Widget>[
                          Spacer(),
                          Container(
                            child: Column(
                              children: [
                                Image.asset(
                                  'images/first.jpg',
                                  width: 179,
                                  height: 225,
                                ),
                                const Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    'Long Sleeve',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          //CONTAINER 2
                          Container(
                            child: Column(
                              children: [
                                Image.asset(
                                  'images/2.jpeg',
                                  width: 179,
                                  height: 225,
                                ),
                                const Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    'Long Sleeve',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
