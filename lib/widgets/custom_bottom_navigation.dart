

import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 81, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month, size: 30,),
          label: 'Calendario', ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pie_chart_outline, size: 30),
          label: 'Graficas' ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle, size: 30),
          label: 'Usuarios' ),
      ] );
  }
}