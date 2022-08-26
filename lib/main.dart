import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'Screens/favScreen.dart';
import 'Screens/homepage.dart';
import 'Screens/messagescreen.dart';
import 'Screens/notificationScreen.dart';
import 'Screens/shareScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // final navigationkey=
  // GlobalKey<CurvedNavigationBar>;
  int index = 2;
  final screens = [
    const HomeScreen(),
    const FavScreen(),
    const MessageScreen(),
    const NotificationScreen(),
    const ShareScreen()
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter',
        home: Scaffold(
          // backgroundColor: Colors.purple,
          body: screens[index],
          bottomNavigationBar: CurvedNavigationBar(
            color: Colors.pink,
            buttonBackgroundColor: const Color.fromARGB(255, 35, 35, 34),
            backgroundColor: Colors.transparent,
            items: const [
              Icon(
                Icons.home,
                color: Colors.white,
              ),
              Icon(
                Icons.favorite_outline,
                color: Colors.white,
              ),
              Icon(
                Icons.message,
                color: Colors.white,
              ),
              Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              Icon(
                Icons.share,
                color: Colors.white,
              )
            ],
            height: 60,
            index: index,
            onTap: ((index) => setState(() => this.index = index)),
          ),
        ));
  }
}
