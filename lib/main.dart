import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment1'),
          leading: Icon(Icons.menu),
          actions: [Icon(Icons.search)],
        ),
        body: Task(),
      ),
    );
  }
}

class ContainerList extends StatelessWidget {
  const ContainerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                'center',
                style: TextStyle(color: Colors.white, fontSize: 26),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                'center',
                style: TextStyle(color: Colors.white, fontSize: 26),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                'center',
                style: TextStyle(color: Colors.white, fontSize: 26),
              )),
            ),
          ),
        ],
      ),
    );
  }
}

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [
      Colors.blueAccent,
      Colors.redAccent,
      Colors.greenAccent,
      Colors.orangeAccent,
      Colors.purpleAccent,
      Colors.pinkAccent,
      Colors.tealAccent,
      Colors.amberAccent,
      Colors.deepOrangeAccent,
      Colors.cyanAccent,
    ];




    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  color: colors[index],
                  borderRadius: BorderRadius.circular(10)),
              child:  Stack(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'center',
                        style: TextStyle(color: Colors.white, fontSize: 26),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Top Left',
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Bottom Right',
                        style: TextStyle(color: Colors.white, fontSize: 26),
                      ),
                    ),
                  ),
                ],
              )),
            )
          ;
        });
  }
}
