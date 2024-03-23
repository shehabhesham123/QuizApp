import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResutlWidget extends StatelessWidget {
  const ResutlWidget({required this.questionResult, super.key});

  final Map<String, Object> questionResult;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          ((questionResult['QuestionIndex'] as int) + 1).toString(),
          style: GoogleFonts.lato(
            color: (questionResult['CorrectAnswar'] ==
                    questionResult['UserAnswar'])
                ? Colors.green
                : Colors.red,
            fontSize: 15,
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                questionResult['QuestionText'] as String,
                style: GoogleFonts.lato(color: Colors.white),
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                questionResult['CorrectAnswar'] as String,
                style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 231, 196, 255)),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                questionResult['UserAnswar'] as String,
                style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 213, 254, 254)),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
}
