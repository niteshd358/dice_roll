import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(const RollDiceAPP());
}

class RollDiceAPP extends StatelessWidget {
  const RollDiceAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'ROLL DICE',
            style: TextStyle(
              fontSize: 25,
              letterSpacing: 4,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 255, 76, 79),
          elevation: 8.0,
          shadowColor: const Color.fromARGB(255, 15, 92, 246),
        ),
        body: const ROLL(),
      ),
    );
  }
}

class ROLL extends StatefulWidget {
  const ROLL({super.key});

  @override
  State<ROLL> createState() => _ROLLState();
}

class _ROLLState extends State<ROLL> {
  int _num = 1;
  final Random _random = Random();
  void _generateRandomNum() {
    setState(() {
      _num = _random.nextInt(6) + 1;
    });
    // HapticFeedback.mediumImpact();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
        color: Colors.lightBlueAccent,
        gradient: LinearGradient(  // Gradient background
              colors: [Colors.blue, Color.fromARGB(255, 10, 26, 199)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              
            ),
      ),
      child:SizedBox.expand(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/dice-$_num.png',
            height: 250,
            width: 250,
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: _generateRandomNum,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 15 , horizontal: 50) ,
              backgroundColor: const Color.fromARGB(255, 111, 228, 248),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(52),
              )
            ),
            child: const Text(
              'ROLL',
              
              style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 168, 39, 39),letterSpacing: 5),
            ),
          )
        ],
      ),
      ),
    );
  }
}
