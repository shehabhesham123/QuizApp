import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionIdx extends StatelessWidget {
  const QuestionIdx(
      {required this.questionIndex, required this.color, super.key});

  final Color color;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionIndex.toString(),
        style: GoogleFonts.lato(
          fontSize: 15,
          fontWeight:FontWeight.bold,
          color:const Color.fromARGB(255, 45, 8, 69),
        ),
      
      ),
    );
  }
}
