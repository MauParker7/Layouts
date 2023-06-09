import 'package:flutter/material.dart';
import 'package:layouts/screens/screens.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'basic_design': (_) => const BasicDesignScreen(),
        'scroll_screen':(_) => const ScrollScreen(),
        'home_screen':(_) => const HomeScreen()
      },
    );
  }
}
