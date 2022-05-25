import 'package:flutter/material.dart';

class ShortsView extends StatefulWidget {
  const ShortsView({Key? key}) : super(key: key);

  @override
  _ShortsViewState createState() => _ShortsViewState();
}

class _ShortsViewState extends State<ShortsView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Second')),
    );
  }
}
