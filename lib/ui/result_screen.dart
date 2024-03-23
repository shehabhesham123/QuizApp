import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:section2/data/questions.dart';
import 'package:section2/ui/result_widget.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {required this.selectedAnswars, required this.onRestartClick, super.key});

  final List<String> selectedAnswars;
  final void Function(List<String>?) onRestartClick;

  @override
  Widget build(BuildContext context) {
    var correctAnswar = result.where((element) {
      return element['CorrectAnswar'] == element['UserAnswar'];
    }).length;

    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You answared $correctAnswar of ${questions.length} questions correctly!',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 300,
            margin: const EdgeInsets.symmetric(horizontal: 35),
            child: SingleChildScrollView(
              child: Column(
                children: result.map((element) {
                  return ResutlWidget(questionResult: element);
                }).toList(),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              icon: const Icon(
                Icons.restart_alt,
                color: Colors.white,
              ),
              onPressed: () {
                onRestartClick(null);
              },
              label: Text(
                'Restart Qiuz',
                style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 240, 227, 252)),
              ))
        ],
      ),
    );
  }

  List<Map<String, Object>> get result {
    List<Map<String, Object>> res = [];
    for (int i = 0; i < questions.length; i++) {
      res.add({
        'QuestionIndex': i,
        'QuestionText': questions[i].text,
        'CorrectAnswar': questions[i].answars[0],
        'UserAnswar': selectedAnswars[i]
      });
    }
    return res;
  }
}
