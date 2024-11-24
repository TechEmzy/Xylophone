import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void keySound(int noteNum) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNum.wav'));
  }

  Expanded buildKey({required Color color, required int noteNum}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
          keySound(noteNum);
        }, 
        child: Text(''),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(color: Colors.red, noteNum: 1),
                buildKey(color: Colors.orange, noteNum: 2),
                buildKey(color: Colors.yellow, noteNum: 3),
                buildKey(color: Colors.lightGreen, noteNum: 4),
                buildKey(color: Colors.green, noteNum: 5),
                buildKey(color: Colors.lightBlue, noteNum: 6),
                buildKey(color: Colors.blue, noteNum: 7),
                
                // Expanded(
                //   child: Container(
                //     color: Colors.red,
                //     child: TextButton(
                //       onPressed: () {
                //       keySound(1);
                //     }, 
                //     child: Text(''),
                //     ),
                //   ),
                // ),

                // Expanded(
                //   child: Container(
                //     color: Colors.orange,
                //     child: TextButton(
                //       onPressed: () {
                //       keySound(2);
                //     }, 
                //     child: Text(''),
                //     ),
                //   ),
                // ),

                // Expanded(
                //   child: Container(
                //     color: Colors.yellow,
                //     child: TextButton(
                //       onPressed: () {
                //       keySound(3);
                //     }, 
                //     child: Text(''),
                //     ),
                //   ),
                // ),

                // Expanded(
                //   child: Container(
                //     color: Colors.lightGreen,
                //     child: TextButton(
                //       onPressed: () {
                //       keySound(4);
                //     }, 
                //     child: Text(''),
                //     ),
                //   ),
                // ),

                // Expanded(
                //   child: Container(
                //     color: Colors.green,
                //     child: TextButton(
                //       onPressed: () {
                //       keySound(5);
                //     }, 
                //     child: Text(''),
                //     ),
                //   ),
                // ),

                // Expanded(
                //   child: Container(
                //     color: Colors.lightBlue,
                //     child: TextButton(
                //       onPressed: () {
                //       keySound(6);
                //     }, 
                //     child: Text(''),
                //     ),
                //   ),
                // ),
                // Expanded(
                //   child: Container(
                //     color: Colors.blue,
                //     child: TextButton(
                //       onPressed: () {
                //       keySound(7);
                //     }, 
                //     child: Text(''),
                //     ),
                //   ),
                // ),
              ],
            ),
        
        ),
      ),
    );
  }
}


