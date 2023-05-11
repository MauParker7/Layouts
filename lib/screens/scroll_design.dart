
import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
   
  const ScrollScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(237, 230, 40, 40),
              Color.fromARGB(255, 112, 7, 0)
            ],
          ) ),
      
        child:
       PageView(
        physics: const BouncingScrollPhysics(),
         scrollDirection: Axis.vertical,
         children: [
         Page1(),
         Page2()
        
       ]),
    ));
  }
}


class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),

        const MainContent()
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    var textStyle = const TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          const SizedBox(height: 30,),
          Text('33°', style: textStyle,),
          Text('Jueves', style: textStyle),
    
          Expanded(child: Container()),
    
    
          const Icon(Icons.keyboard_arrow_down_outlined, size: 100, color: Colors.white,)
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container
    (color: Color.fromARGB(255, 141, 4, 4),
    height: double.infinity,
    
    alignment: Alignment.topCenter,
      child: Image( image: AssetImage('assets/fondo.png'),));
  }
}


class Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 141, 4, 4),
      child: Center(
        child: TextButton(
          onPressed: () {
            
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Bienvenido Señor', style: TextStyle(color: Colors.black, fontSize: 20)),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            shape: StadiumBorder()
          ),
        ),
      ),
    );
  }
}