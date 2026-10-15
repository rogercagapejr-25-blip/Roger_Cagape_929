import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Hello World", style: TextStyle(color: Colors.green)),
          Text("Kamo Bahala", style: TextStyle(color: Colors.blue),),

          Row(
            children: [
            Text("Hello World"),
            SizedBox(width: 50),
            Text("Kamo Bahala ah"),
           ],
         ),
       
         Container(
          height: 250,
          width: 250,
          color: Colors.red,
          child: Center(child: Text("Gwapo")),
         )
        ],
      ),
    );
  }
}