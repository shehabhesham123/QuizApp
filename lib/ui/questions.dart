import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:section2/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({required this.onQuizEnd, super.key});

  final void Function(List<String> selectedAnswars) onQuizEnd;

  @override
  State<StatefulWidget> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<QuestionsScreen> {
  List<String> selectedAnswars = [];
  int triger = 0;

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[triger];

    return SizedBox(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ...currentQuestion.shuffledAnswars.map(
              (answar) => ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                ),
                onPressed: () {
                  onAnswarSelected(answar);
                },
                child: Text(
                  answar,
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onAnswarSelected(String answar) {
    selectedAnswars.add(answar);
    setState(() {
      if (triger < questions.length - 1) {
        triger++;
      } else {
        widget.onQuizEnd(selectedAnswars);
      }
    });
  }
}
