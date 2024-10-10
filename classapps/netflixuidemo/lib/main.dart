import 'package:flutter/material.dart';
void main() {
runApp(const MyApp());
}
class MyApp extends StatelessWidget {
const MyApp({super.key});
@override
Widget build(BuildContext context) {
return MaterialApp(
home: Scaffold(
appBar: AppBar(
title: const Text(
"Netflix Demo",
style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
),
centerTitle: true,
backgroundColor: Colors.blue,
),
body: ListView.builder(
itemCount: 10,
physics: const BouncingScrollPhysics(),
itemBuilder: (BuildContext context, int index) {
return Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
const Text(
"Action Movies",
style:TextStyle(
fontSize: 30,
fontWeight: FontWeight.w500,
),
),
SingleChildScrollView(
scrollDirection: Axis.horizontal,
child: Row(
  children: [
Container(
padding: const EdgeInsets.all(5),
height: 300,
width: 200,
child: Image.network(
"https://rukminim2.flixcart.com/image/850/1000/jgy0fbk0/poster/w/b/z/medium-g83poster0092-m-s-dhoni-movie-12-inch-x-18-inch-creative-original-imaf52pgstudm6qn.jpeg?q=90&crop=false",
),
),
Container(
padding: const EdgeInsets.all(5),
height: 300,
width: 200,
child: Image.network(
"https://rukminim2.flixcart.com/image/850/1000/jnamvm80/poster/h/w/r/large-stranger-things-season-2-poster-a3-13-x-19-inches-original-imafay3m5fddv8pg.jpeg?q=90&crop=false",
),
),
Container(
padding: const EdgeInsets.all(5),
height: 300,
width: 200,
child: Image.network(
"https://rukminim2.flixcart.com/image/850/1000/l0h1g280/poster/1/m/t/small-mirzapur-web-series-poster-multicolor-photopaper-print-12-original-imagc95bfufzrhw8.jpeg?q=90&crop=false",
),
),
Container(
padding: const EdgeInsets.all(5),
height: 300,
width: 200,
child: Image.network("https://m.media-amazon.com/images/M/MV5BYTQ0NTY3MDAtOTIyMS00MzgyLThkZDMtZGI4Y2I5MTY3YmMzXkEyXkFqcGc@._V1_.jpg" ,
),
),
Container(
padding: const EdgeInsets.all(5),
height: 300,
width: 200,
child: Image.network(
"https://i0.wp.com/www.spinvfx.com/wp-content/uploads/2022/11/reacher-1.jpg?fit=1200%2C1705&ssl=1",
),
),
Container(
padding: const EdgeInsets.all(5),
height: 300,
width: 200,
child: Image.network(
"https://i.etsystatic.com/23402008/r/il/bd3b19/2326753472/il_fullxfull.2326753472_ln15.jpg",
),
)
  ],
),
)
],
);
},
),
),
);
}
}