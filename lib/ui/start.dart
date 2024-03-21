import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 35, 4, 72),
            Color.fromARGB(255, 38, 9, 88)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
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
              // onStartClick
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 245, 233, 255),
            ),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
