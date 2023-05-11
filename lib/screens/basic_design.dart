
import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
        //Imagen
        Image(image: AssetImage('assets/reach12.jpg')),
        
        //Titulo
         Title(),

         //Button Section
         ButtonSection(),

         //Text Section

         TextSection()
      ],)
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: 
        Column(
          children: const [
            Text('La Batalla de Nueva Alejandría fue un conflicto entre las tropas de Reach contra el Covenant durante la guerra en Reach. Fue una batalla conspirada especialmente por tropas Jiralhanae, atacando el corazón de Nueva Alejandría, matando civiles y tropas de defensa del lugar.',
            textAlign: TextAlign.justify,
            ),

            SizedBox(height: 30,),

            Text('Después de la muerte del SPARTAN-II Jorge-052 para destruir la Corbeta Covenant, el Ardent Prayer, y a la vez consecuentemente el Larga Noche de Consuelo, más Cruceros de Batalla o de Carga Covenant llegaron al espacio del planeta, destruyendo cualquier nave o artefacto humano a su paso. El SPARTAN-B312, también conocido como Noble Seis, logró de alguna manera llegar a la superficie del planeta sin heridas de mayor nivel, con la posibilidad de poder pelear y cooperar en la batalla.',
            textAlign: TextAlign.justify,),

            SizedBox(height: 30,),

            Text('Cuando estas naves llegaron al planeta, a su vez las acompañaron varias Corbetas del Covenant, las cuales se establecieron en la superficie de la ciudad capital de Nueva Alejandría. Éstas soltaban naves de reconocimiento o bien tropas terrestres para acabar con la ciudad y todas sus defensas, además de sus habitantes civiles. También estas servían de bombarderos para derribar con sus torretas naves de evacuación y construcciones humanas que se ubicaran en el sector, tanto militares como civiles',
            textAlign: TextAlign.justify,),







          ],
        )
        

    );
  }
}


class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('"Batalla de Nueva Alejandria"', style: TextStyle(fontWeight: FontWeight.bold),),
            Text('Nueva Alejandria, Planeta de Reach', style: TextStyle(color: Colors.black87),),
          ],
         ),

         Expanded(child: Container()),
         
         const Icon(Icons.man_3_sharp, color: Colors.redAccent,),
         const Text('Millones de Bajas', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent), maxLines: 2,)
       ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: const [
        CustomButton(icon: Icons.hive_rounded, text: 'Heroes de Reach',),

        CustomButton(icon: Icons.menu_book_sharp, text: 'Historia',),

        CustomButton(icon: Icons.info_outline_rounded, text: 'Mas Informacion...',),
    
       ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text; 

  const CustomButton({
    super.key, required this.icon, required this.text,
  });

  @override
  Widget build(BuildContext context) {

    return
     Column(
      children: [
        Icon(icon, color: const Color.fromARGB(255, 13, 89, 230), size: 35,),
        Text(text, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 13, 89, 230)))
      ],
    );
  }
}