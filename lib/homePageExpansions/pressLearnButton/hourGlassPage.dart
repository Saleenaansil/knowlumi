import 'package:flutter/material.dart';
import 'package:knowlumi/homePageExpansions/pressLearnButton/eligible.dart';

class HourglassPage extends StatefulWidget {
  const HourglassPage({super.key});

  @override
  _HourglassPageState createState() => _HourglassPageState();
}

class _HourglassPageState extends State<HourglassPage> {
  @override
  void initState() {
    super.initState();
    // Wait for 3 seconds and navigate to Eligible page
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Eligible()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Hourglass Icon
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  "asset/hourglass.png",
                  width: 64.5,
                  height: 80,
                ),
                Positioned(
                  top: 40,
                  child: Image.asset(
                    "asset/hourglass inside sand.png",
                    width: 40,
                    height: 40,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // First Text
            Text(
              "Checking.... ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            // Second Text
            Text(
              "Checking Your CV",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
