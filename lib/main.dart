import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: 600,
              child: Stack(
                children: <Widget>[
                  Container(
                      width: 600,
                      height: 800,
                      child: CustomPaint(
                        painter: OpenPainter(),
                      )),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'images/first.jpg',
                      width: 331,
                      height: 600,
                    ),
                  ),
                  const Center(
                    child: Text(
                      "CLOTHIES",
                      style: TextStyle(
                        fontSize: 45,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 180,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: const <Widget>[
                      Text('Tshirts'),
                      Text('Bottoms'),
                      Text('Tops'),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontSize: 23,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffDA9999),
                    shape: StadiumBorder(),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color(0xffDA9999)
      ..style = PaintingStyle.fill;
    //a rectangle
    canvas.drawRect(Offset(30, 150) & Size(350, 400), paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
