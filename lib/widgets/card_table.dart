
import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(color: Colors.blue, icon: Icons.pie_chart_sharp , text: 'General' ,),

            _SingleCard(color: Colors.blueAccent, icon: Icons.car_rental , text: 'Transport'),
          ] 
        ),

        TableRow(
          children: [
            _SingleCard(color: Colors.purple, icon: Icons.shop , text: 'Shopping'),

            _SingleCard(color: Colors.purpleAccent, icon: Icons.cloud , text: 'Bill'),
          ] 
        ),

        TableRow(
          children: [
            _SingleCard(color: Colors.pink, icon: Icons.movie , text: 'Entertaiment'),

            _SingleCard(color: Colors.pinkAccent, icon: Icons.save_alt , text: 'Download'),
          ] 
        ),

        TableRow(
          children: [
            _SingleCard(color: Colors.red, icon: Icons.catching_pokemon , text: 'Pokemon'),

            _SingleCard(color: Colors.redAccent, icon: Icons.cabin , text: 'Si'),
          ] 
        )


      ],
    );
  }
}

class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
  super.key, 
  required this.icon, 
  required this.color, 
  required this.text});

  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(icon, size: 35,),
            radius: 30,
          ),
          SizedBox(height: 10,),
          Text(text, style: TextStyle(color: Colors.blue, fontSize: 18),)
        ],
      ),
    );
  }
}