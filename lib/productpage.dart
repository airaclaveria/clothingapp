import 'package:flutter/material.dart';
import 'home.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainProductPage(),
    );
  }
}

class MainProductPage extends StatefulWidget {
  const MainProductPage({super.key});

  @override
  State<MainProductPage> createState() => _MainProductPageState();
}

class _MainProductPageState extends State<MainProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
        child: SafeArea(
            child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                InkWell(
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xff333333),
                    size: 40.0,
                  ),
                  onTap: () {
                    Navigator.of(context, rootNavigator: true).push(
                      MaterialPageRoute(
                        builder: (_) => HomePage(),
                      ),
                    );
                  },
                ),
                const Spacer(),
                const Icon(
                  Icons.favorite,
                  color: Color(0xff333333),
                  size: 40.0,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Summer Hoodie',
              style: TextStyle(
                fontSize: 27,
              ),
            ),
            //description
            Row(
              children: const <Widget>[
                Spacer(),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 40.0,
                ),
                Text(
                  "4.8",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "2,456 Reviews",
                ),
                Spacer(),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'images/firstimage.jpeg',
                width: 352.0,
                height: 250.0,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Select Size",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            //end of image
            //buttons
            Row(
              children: <Widget>[
                //Small button
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'S',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                //Medium button
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'M',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                //Large Button
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'L',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'XL',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'XXL',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Select Color",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),

            Row(
              children: <Widget>[
                const Spacer(),
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),

            const SizedBox(
              height: 150,
            ),

            Row(
              children: <Widget>[
                const Spacer(),
                Text(
                  "79.99",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
