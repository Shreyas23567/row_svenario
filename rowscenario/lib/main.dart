import 'package:flutter/material.dart';


void main() {

 runApp(const MainApp());

}


class MainApp extends StatelessWidget {

 const MainApp({super.key});

 @override

 Widget build(BuildContext context) {

 print("Device width: ${MediaQuery.of(context).size.width}");

 print("Device height: ${MediaQuery.of(context).size.height}");

 return MaterialApp(

 home: Scaffold(

 appBar: AppBar(

 title: const Text(

 "Column Demo",

 style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),

 ),

 centerTitle: true,

 backgroundColor: Colors.blue,

 ),

 body: Container(

 height: MediaQuery.of(context).size.height,

 child: Row(

 mainAxisAlignment: MainAxisAlignment.end,

 crossAxisAlignment: CrossAxisAlignment.center,

 children: [

 Container(

 height: 200,

 width: 200,

 color: Colors.black,

 ),

 ],

),

 ),

 ),

 );

 }

}