// import 'package:donut_shop/pages/landing.dart';
import 'package:donut_shop/utility/constants.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> 
  with SingleTickerProviderStateMixin {

  AnimationController? donutController;
  Animation<double>? rotationAnimation;

  @override
  void initState() {
    super.initState();
    donutController = AnimationController(
      duration: const Duration(seconds: 5), 
      vsync: this)..repeat();

    rotationAnimation = Tween<double>(begin: 0, end: 1)
    .animate(CurvedAnimation(parent: donutController!, curve: Curves.linear));
  }

  @override 
  void dispose() {
    donutController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 2), () {
      Utils.mainAppNav.currentState!.pushReplacementNamed('/main');
    });

    return Scaffold(
      backgroundColor: Utils.mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RotationTransition(
              turns: rotationAnimation!,
              child: Image.network(Utils.donutLogoWhiteNoText, width: 100, height: 100),
            ),
            Image.network(Utils.donutLogoWhiteText, width: 150, height: 150)
          ],
        ),
      )
    );
  }
}