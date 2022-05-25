import "package:flutter/material.dart";
import 'package:youtube_clone/ui/create_tab.dart';
import 'package:youtube_clone/ui/home_view.dart';
import 'package:youtube_clone/ui/library_view.dart';
import 'package:youtube_clone/ui/shorts_view.dart';
import 'package:youtube_clone/ui/subscriptions_view.dart';

class PagesView extends StatefulWidget {
  const PagesView({Key? key}) : super(key: key);

  @override
  _PagesViewState createState() => _PagesViewState();
}

class _PagesViewState extends State<PagesView> {
  int selectedIndex = 0;
  static const List<Widget> views = [
    HomeView(),
    ShortsView(),
    CreateTab(),
    SubscriptionsView(),
    LibraryView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 11.0,
        unselectedFontSize: 11.0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black87,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            activeIcon: Icon(Icons.explore),
            label: 'Shorts',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline,
              size: 40,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined),
            activeIcon: Icon(Icons.subscriptions),
            label: 'Subscriptions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined),
            activeIcon: Icon(Icons.video_library),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}
