

import 'package:flutter/material.dart';
import 'package:layouts/widgets/background.dart';
import 'package:layouts/widgets/card_table.dart';
import 'package:layouts/widgets/custom_bottom_navigation.dart';
import 'package:layouts/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Background(),


          _HomeBody()



        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
      )
    ;
  }
}

class _HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [

          //Titulos
          PageTitle(),

          //Card Table
          CardTable(),


        ],
        
      ));
  }
}