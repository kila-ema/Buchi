import 'package:flutter/material.dart';
import 'home.dart';
import 'search.dart';

class ButtomNav extends StatefulWidget {
  const ButtomNav({ Key? key }) : super(key: key);

  @override
  State<ButtomNav> createState() => _ButtomNavState();
}

class _ButtomNavState extends State<ButtomNav> {
  int Current_index = 0;
  final tabs = [
    Home(),
    Search(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[Current_index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 14, 13, 13),
        currentIndex: Current_index,
        backgroundColor: Color(0xfff4f6fd),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
             color: Color(0xff2657e).withOpacity(0.5),
             size: 40,
            ),
            label:'',
            ),
            BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
             color: Color(0xff2657e).withOpacity(0.5),
             size: 40,
            ),
            label:'',
            ),
            BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
             color: Color(0xff2657e).withOpacity(0.5),
             size: 40,
            ),
            label:'',
            ),
        ],        
          onTap: (index) {
            setState(() {
              Current_index = index;              
            });
          },
        ),      
    );
  }
}