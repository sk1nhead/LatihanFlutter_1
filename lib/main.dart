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
        primarySwatch: Colors.green,
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
        child: Column (
           children: [
             Container (
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                child: const Text("NoiseGarage", style: TextStyle(
                 color: Colors.green,
                fontSize: 30,
                fontWeight: FontWeight.w500,
                       ), ),
             ),
            Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                child: const Text("Sign In",style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w500,
                fontSize: 20,
                ),),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                alignment: Alignment.center,
                child: const TextField(
                  decoration: InputDecoration( border: OutlineInputBorder(), labelText: "Username/Email" ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              alignment: Alignment.center,
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration( border: OutlineInputBorder(), labelText: "Password"),
              ),
            ),
             Container(
               padding: const EdgeInsets.all(10),
               alignment: Alignment.center,
               child:  ElevatedButton(
                 onPressed: () {

                 },
                 child: const Text("Sign In"),
               )
             ),
          
      ],

      ),
      ),
    );
  }
}
