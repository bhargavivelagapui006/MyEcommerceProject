import 'package:flutter/material.dart';

class StatusWidget extends StatefulWidget {
  const StatusWidget({super.key});

  @override
  State<StatusWidget> createState() => _StatusWidgetState();
}

class _StatusWidgetState extends State<StatusWidget> {
  var img="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            
          
      body: Center(
         child: Column(
          children: [
            Container(
                color: Colors.grey,
                height: 300,
                width: 300,
                child: Image.network(img),
              ),
              ElevatedButton(onPressed: () {
                      
                img = "https://www.popsci.com/wp-content/uploads/2021/12/16/laptop-screen-showing-gmail.jpg";

                   setState(() {
                     
                   });


              }, child: Text("Add Image")),

              ElevatedButton(onPressed: () {
                      
                img = "";

                   setState(() {
                     
                   });


              }, child: Text("Remove Image")),
         
          ],
          
         ),
       )

    );
  }
}