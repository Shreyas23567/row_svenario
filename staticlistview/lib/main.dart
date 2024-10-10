// ignore_for_file: avoid_print

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

 debugShowCheckedModeBanner: false,

 home: Scaffold(

 appBar: AppBar(

 title: const Text(

 "ListView Demo",

 style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),

 ),

 centerTitle: true,

 backgroundColor: Colors.blue,

 ),
 body: ListView(

 children: [

 Image.network(

 "https://static.wahcricket.com/en/prod/wp-content/uploads/2019/12/CAs-ODI-XI-Of-The-Decade-MS-Dhoni-Captain-2-More-Indians-In-Line-up.jpg",

 ),

 const Icon(

 Icons.favorite,

 color: Colors.red,

 ),

 const Text(

 "Best of the Best",

 style: TextStyle(

 fontSize: 30,

 fontWeight: FontWeight.w500,

 ),

 ),

 Image.network(

"https://cdn.zeebiz.com/sites/default/files/2022/11/05/209096-virat-kohli-7-pti.jpg",

),

GestureDetector(

onTap: () {

print("Button pressed");

},

 child: Container(

 height: 50,

 color: Colors.amber,

 child: const Text(

 "Press me",

),

 ),

 )

],

 ),
 ),

);

}

}