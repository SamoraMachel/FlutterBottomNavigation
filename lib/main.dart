import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  final screens = [
    Center(child: Text("Home", style: TextStyle(fontSize: 60))),
    Center(child: Text("Feed", style: TextStyle(fontSize: 60))),
    Center(child: Text("Chat", style: TextStyle(fontSize: 60))),
    Center(child: Text("Profile", style: TextStyle(fontSize: 60))),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tambua',
      theme: ThemeData(
        // This is the theme
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bottom Navigation"),
          centerTitle: true,
        ),
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType
              .fixed, // Remove incase you want a shifting animation
          iconSize: 24, // optional attribute
          selectedFontSize: 14, // optional attribute
          showUnselectedLabels:
              false, // Remove the attribute to always show the labels
          // showSelectedLabels: false, // Uncommenting this will remove the labels for selected items
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Feed",
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Chat",
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
