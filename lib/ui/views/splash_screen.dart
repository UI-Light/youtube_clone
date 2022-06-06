import "package:flutter/material.dart";
import 'dart:async';
import 'package:youtube_clone/ui/views/pages_view.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SplashScreenViewState();
  }
}

class SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const PagesView(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image(
          image: AssetImage('assets/youtube_Logo.png'),
        ),
      ),
    );
  }
}
