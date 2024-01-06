import 'package:flutter/material.dart';
import 'intro_screen.dart';
import 'utils.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3));

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => IntroScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Group.png',
              width: 150.0,
              height: 150.0,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 20.0),
            Text(
              'Grocery App',
              style: TextStyle(
                color: white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
