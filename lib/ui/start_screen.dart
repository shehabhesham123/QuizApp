import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({required this.onClick, super.key});

  final void Function(List<String>?) onClick;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/quiz_logo.png',
          color: const Color.fromARGB(255, 235, 211, 254),
          height: 300,
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          'Learn Flutter to fun way',
          style: GoogleFonts.lato(
            color: const Color.fromARGB(255, 244, 231, 255),
            fontSize: 22,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          icon: const Icon(Icons.arrow_right),
          onPressed: () {
            onClick(null);
          },
          style: OutlinedButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 245, 233, 255),
          ),
          label: const Text('Start Quiz'),
        ),
      ],
    );
  }
}
