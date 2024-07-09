import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const NewXylophone());
}

class NewXylophone extends StatefulWidget {
  const NewXylophone({super.key});

  @override
  State<NewXylophone> createState() => _NewXylophoneState();
}

class _NewXylophoneState extends State<NewXylophone> {
  Future<void> playSound(int sound, int playerNum) async {
    final player$playerNum = AudioPlayer();
    await player$playerNum.play(
      AssetSource('note$sound.wav'),
    );
  }

  Expanded xyloButton(int n1, Color color, String text, Color textColor) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(
            n1,
            n1,
          );
        },
        style: ButtonStyle(
          padding: WidgetStateProperty.all(EdgeInsets.zero),
        ),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: color,
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.sriracha(
                textStyle: TextStyle(color: textColor, fontSize: 40),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              xyloButton(1, Colors.red, 'C', Colors.red.shade800),
              xyloButton(2, Colors.orange, 'D', Colors.orange.shade900),
              xyloButton(3, Colors.yellow, 'E', Colors.yellow.shade800),
              xyloButton(4, Colors.lightGreen, 'F', Colors.lightGreen.shade800),
              xyloButton(5, Colors.lightBlue, 'G', Colors.blue.shade800),
              xyloButton(6, Colors.indigoAccent, 'A', Colors.indigo.shade700),
              xyloButton(7, Colors.deepPurple, 'B', Colors.deepPurple.shade900),
              xyloButton(8, Colors.purple, 'C', Colors.purple.shade900),
            ],
          ),
        ),
      ),
    );
  }
}
