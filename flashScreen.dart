import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_demo/Screens/HomeScreen.dart';

class FlashScreen extends StatefulWidget {
  const FlashScreen({super.key});

  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {

   
   @override
  void initState() {
   
      Timer(Duration(seconds: 5), 
      
           () {
        
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute
                (builder: (ctx) => MyHomePage()), (route)=>false);

           }
      
      );
    


    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Flash Screen"),
        centerTitle: true,
      
      ),

      body: Column(
        children: [

         
          Center(child: Text("Loading...",style: TextStyle(fontSize: 40,color: Colors.lightGreen),)),

        ],
      ),
    );
  }
}