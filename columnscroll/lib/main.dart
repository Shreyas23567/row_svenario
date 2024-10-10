import 'package:flutter/material.dart';


void main() {

 runApp(const MainApp());

}


class MainApp extends StatelessWidget {

 const MainApp({super.key});

 @override

 Widget build(BuildContext context) {

 return MaterialApp(

 home: Scaffold(
   appBar: AppBar(
 title: const Text(

 "ColumnScroll Demo",

 style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),

 ),

 centerTitle: true,

 backgroundColor: Colors.blue,

 ),

 body: SingleChildScrollView(

 child: Column(
 mainAxisAlignment: MainAxisAlignment.spaceEvenly,

 children: [
 Image.network(
 "https://images.pexels.com/photos/20511375/pexels-photo-20511375/free-photo-of-view-of-a-blue-bmw-m5-parked-in-front-of-a-modern-building.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),

 Container(

 height: 200,

 width: 200,

 color: Colors.amber,

 ),

Image.network(

 "https://media.istockphoto.com/id/1400631173/photo/bmw-m5-in-black.jpg?s=612x612&w=0&k=20&c=OIliNgFs3uKYHaXBqqdSAcjXKZFVI5HrKYNNCYLtzE0="),

 Container(

 height: 200,
 width: 200,

 color: Colors.amber,

 ),

 Image.network(

"https://hips.hearstapps.com/hmg-prod/images/2025-bmw-m5-134-667b0f4828b42.jpg"),

 Container(

 height: 200,

 width: 200,
 color: Colors.amber,

 ),

 ],

 ),

 ),
),

 );

 }

}