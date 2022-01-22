import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'Flutter Latihan'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [ IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          children:   [
            const Text("Ini textnya miring", style: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic ),),
             const Text("Ini text biasa warna hijau", style: TextStyle(fontSize: 20.0, color: Color(0xFF587846) ),),
             const Text("Ini textnya biasa tipis", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w100 ),),
             const Text("Ini textnya biasa tebal", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold ),
            ),
             const SizedBox(
             height: 20.0, 
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.home, size: 40,),
                Icon(Icons.person, size: 30,),
                Icon(Icons.person, color: Colors.blue,),
              ],
            ),
            const SizedBox( 
              height: 20.0,
            ),
            Container(
              width: 300,
              height: 100,
              child: Image.network("https://images.bisnis-cdn.com/thumb/posts/2021/12/14/1477432/toyota-rush1.jpg?w=744&h=465",
              fit: BoxFit.scaleDown,
              ),
            ),
            Container(
              height: 200,
              width: 350,
              child: Image.asset("assets/images/IMG_20190711_123103.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}
