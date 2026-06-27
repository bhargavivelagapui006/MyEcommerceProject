import 'package:flutter/material.dart';

class TestWidgets extends StatefulWidget {
  const TestWidgets({super.key});

  @override
  State<TestWidgets> createState() => _TestWidgetsState();
}

class _TestWidgetsState extends State<TestWidgets> {

         
       

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
          title: Text("Whatsapp"),
          backgroundColor: Colors.orange,
          actions: [
            Icon(Icons.person),
            Icon(Icons.more_vert)
          ],
         ),
    );
  }
}
