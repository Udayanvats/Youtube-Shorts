import 'package:flutter/material.dart';
import 'package:grotask/colors.dart';
import 'package:grotask/data.dart';
import 'package:grotask/widgets/appbar.dart';
import 'package:grotask/widgets/card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndx = 0;
  @override
  Widget build(BuildContext context) {
    // double sizefont = size.width * 0.04;
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            onTap: (idx) {
              setState(() {
                pageIndx = idx;
              });
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: whiteColor,
            currentIndex: pageIndx,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    size: 30,
                    color: whiteColor,
                  ),
                  activeIcon: Icon(
                    Icons.home_filled,
                    size: 30,
                    color: whiteColor,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/youtube-shorts-logo.png'),
                    size: 30,
                    color: whiteColor,
                  ),
                  activeIcon: ImageIcon(
                    const AssetImage('assets/images/youtube-shorts.png'),
                    color: whiteColor,
                    size: 30,
                  ),
                  label: 'Shorts'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/add.png'),
                    size: 45,
                    color: whiteColor,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    subscriptions_outlined,
                    size: 30,
                    color: whiteColor,
                  ),
                  activeIcon: Icon(
                    subscriptions,
                    size: 30,
                    color: whiteColor,
                  ),
                  label: 'Subscriptions'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.video_library_outlined,
                    size: 30,
                    color: whiteColor,
                  ),
                  activeIcon: Icon(
                    Icons.video_library,
                    size: 30,
                    color: whiteColor,
                  ),
                  label: 'Library'),
            ]),
        body: pages[pageIndx]);
  }
}
