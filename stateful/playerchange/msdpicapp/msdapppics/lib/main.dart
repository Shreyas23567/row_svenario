import 'package:flutter/material.dart';

void main() {
  runApp(const MSDApp());
}

class MSDApp extends StatefulWidget {
  const MSDApp({super.key});

  @override
  State<MSDApp> createState() => _MSDAppState();
}

class _MSDAppState extends State<MSDApp> {
  int _counter = 0;

  // ignore: non_constant_identifier_names
  List<String> MSDList = <String>[
    "https://w0.peakpx.com/wallpaper/908/670/HD-wallpaper-dhoni-sports-uniform-cricket-ms-dhoni-mahendra-singh-dhoni-thumbnail.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh4JEFwT9B6zLZe1TqZsJEQlwjYIi2oSPuGw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdFsc84KOnqhDNY15oP6hHhGi_PT7Rip4cpA&s",
    "https://www.jaisamand.co.in/Content/UserMenu/blogs/wp-content/uploads/2024/01/ms-dhoni-image_42460d815.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgld7H1QabnKgOH91M7c49r6TKKeg3sYnqDg&s",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MSDhoni',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("MSD Pics App"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                MSDList[_counter],
                height: 300,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              Text(
                'List of MSD  ${_counter + 1} of ${MSDList.length}',
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  if (_counter > 0) {
                    _counter--;
                  } else {
                    _counter = MSDList.length - 1;
                  }
                });
              },
              tooltip: 'Last PIC',
              child: const Icon(Icons.remove),
            ),
            const SizedBox(width: 280),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  if (_counter < MSDList.length - 1) {
                    _counter++;
                  } else {
                    _counter = 0;
                  }
                });
              },
              tooltip: 'Next PIC',
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}