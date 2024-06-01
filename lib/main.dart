import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MagicPage(),
    );
  }
}

class MagicPage extends StatefulWidget {
  const MagicPage({super.key});

  @override
  State<MagicPage> createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  int imageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        centerTitle: true,
        title: const Text("Ask Me Anything", style: TextStyle(fontSize: 30, color: Colors.white),),

      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              imageNumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('assets/images/ball$imageNumber.png'),
        )
      ),

    );
  }
}
