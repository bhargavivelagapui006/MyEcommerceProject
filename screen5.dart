import 'package:flutter/material.dart';

class ScreenFive extends StatefulWidget {
  const ScreenFive({super.key});

  @override
  State<ScreenFive> createState() => _ScreenFiveState();
}

class _ScreenFiveState extends State<ScreenFive> {


   TextEditingController name = TextEditingController();
   TextEditingController email = TextEditingController();
   TextEditingController password = TextEditingController();
   

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("ScreenFive"),
      ),

      body: Padding(
        
        padding: const EdgeInsets.all(25),
        child: Container(
          child: Column(
            
            children: [
              
              TextField(
                controller: name,
                decoration: InputDecoration(
                  hintText: "Enter Name",
                  label: Text("Enter Name"),
                  border: OutlineInputBorder(),
                ),
                
              ),
              SizedBox(height: 25,),
              
          
              TextField(
                controller: email,
                decoration: InputDecoration(
          
                  hintText: "Enter Email",
                  label: Text("Enter Email"),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 25,),
              TextField(
                controller: password,
                decoration: InputDecoration(
          
                  hintText: "Enter Password",
                  label: Text("Enter Password"),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){

               print(name.text);

              }, child: Text("Submit")),
            ],
          ),
        ),
      ),


    );
  }

  @override
  void didUpdateWidget(covariant ScreenFive oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}