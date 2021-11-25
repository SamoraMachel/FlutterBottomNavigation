import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    int _selectedIndex = 0;

    final screen = [
      Center(child: Text("1")),
      Center(child: Text("2")),
      Center(child: Text("3")),
      Center(child: Text("4")),
      Center(child: Text("5")),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_selectedIndex],
      bottomNavigationBar: Container(
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Colors.blue, Colors.blue.shade900])),
      child: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: SizedBox(
            height: 56,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconBottomBar(
                      text: "Home",
                      icon: Icons.home,
                      selected: _selectedIndex == 0,
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 0;
                        });
                      }),
                  IconBottomBar(
                      text: "Search",
                      icon: Icons.search,
                      selected: _selectedIndex == 1,
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 1;
                        });
                      }),
                  IconBottomBar(
                      text: "Add",
                      icon: Icons.add,
                      selected: _selectedIndex == 2,
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 2;
                        });
                      }),
                  IconBottomBar(
                      text: "Cart",
                      icon: Icons.local_grocery_store_rounded,
                      selected: _selectedIndex == 3,
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 3;
                        });
                      }),
                ],
              ),
            )),
      ),
    ),
    );
  }
}

// class BottomNavigationBar extends StatefulWidget {
//   const BottomNavigationBar({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<BottomNavigationBar> createState() => _BottomNavigationBarState();
// }

// class _BottomNavigationBarState extends State<BottomNavigationBar> {

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }

class IconBottomBar extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  const IconBottomBar(
      {required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: this.onPressed,
            icon: Icon(
              icon,
              size: 25,
              color: selected ? Colors.white : Colors.grey,
            )),
        Text(text,
            style: TextStyle(
                fontSize: 12,
                height: .1,
                color: selected ? Colors.white : Colors.grey))
      ],
    );
  }
}
