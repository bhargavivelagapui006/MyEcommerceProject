
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_demo/Screens/Actions.dart';
import 'package:my_demo/Screens/calls.dart';
import 'package:my_demo/Screens/community.dart';
import 'package:my_demo/Screens/home.dart';
import 'package:my_demo/Screens/status.dart';


class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  var movingPosition = 0;

  var MyScreens = [

       HomeWidget(),
       StatusWidget(),
       CommunityWidget(),
       CallsWidget()

  ];
    
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController password = TextEditingController();


  validate() {

     if(name.text.isEmpty) {
          Fluttertoast.showToast(msg: "Please enter name");
     }else if(email.text.isEmpty){
 Fluttertoast.showToast(msg: "Please enter email");
     }else if(mobile.text.isEmpty ){
 Fluttertoast.showToast(msg: "Please enter mobile");
     }else if(password.text.isEmpty){ 
 Fluttertoast.showToast(msg: "Please enter password");
     }else{
      Fluttertoast.showToast(msg: "Processing...");
     }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
          title: Text("Whatsapp"),
          backgroundColor: Colors.teal,
          actions: [
            Icon(Icons.person),
            Icon(Icons.more_vert)
          ],
         ),

                 

             drawer: Drawer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                    Container(
                       width: double.infinity,
                      child: DrawerHeader(child: Icon(Icons.verified_user)),
                    color: Colors.lime,
                  
                    ),
                              
                    TextButton.icon(onPressed: (){}, icon: Icon(Icons.inbox),
                     label: Text("Inbox", style: TextStyle(color: Colors.deepPurple),),),
                     Divider(),
                    TextButton.icon(onPressed: (){}, icon: Icon(Icons.star),
                       label: Text("starred"),),
                     Divider(),
                    TextButton.icon(onPressed: (){}, icon: Icon(Icons.send),
                        label: Text("Sent box"),),
                     Divider(),
                    TextButton.icon(onPressed: (){}, label: Text("Snoozed"),
                          icon: Icon(Icons.update),),
                     Divider(),

                ],
              ),
             ),
  
                    bottomNavigationBar: BottomNavigationBar(
                      currentIndex : movingPosition,
                      onTap: (position){
                        setState(() {
                          movingPosition = position;
                        });

                      },
                      unselectedItemColor: Colors.black,
                      selectedItemColor: Colors.orange,
                      showUnselectedLabels: true,
                      items: [
                      BottomNavigationBarItem(icon: Icon(Icons.home),label: "HomeScreen"),
                      BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
                      BottomNavigationBarItem(icon: Icon(Icons.download),label: "Downloads"),
                      BottomNavigationBarItem(icon: Icon(Icons.man),label: "profile"),
                    ],
                    backgroundColor: const Color.fromARGB(255, 245, 243, 228),),
        body: MyScreens[movingPosition],
        
         
          
                

    );

  }
}
