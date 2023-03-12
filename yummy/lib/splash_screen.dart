import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:yummy/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.network(
            "https://assets3.lottiefiles.com/packages/lf20_ovwsvehd.json",
            controller: _controller, onLoaded: (compose) {
          _controller
            ..duration = compose.duration
            ..forward().then((value) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            });
        }),
        Center()
      ],
    ));
  }
}
