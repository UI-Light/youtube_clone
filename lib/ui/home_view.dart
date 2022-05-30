import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            leadingWidth: 150,
            leading: const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Image(
                image: AssetImage('assets/youtube-logo.png'),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.cast,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/raya.png"),
                ),
              )
            ],
            floating: true,
          )
        ],
      ),
    );
  }
}
