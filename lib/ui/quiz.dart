import 'package:flutter/material.dart';
import 'package:section2/ui/result_screen.dart';
import 'package:section2/ui/start_screen.dart';
import 'package:section2/ui/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String screenTriger = 'StartScreen';
  List<String>? selectedAnswars;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 45, 8, 69),
                Color.fromARGB(255, 46, 18, 95)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: currentScreen,
        ),
      ),
    );
  }

  void switchScreen(List<String>? selectedAnswars) {
    setState(() {
      if (screenTriger == 'StartScreen') {
        screenTriger = 'QuestionsScreen';
      } else if (screenTriger == 'QuestionsScreen') {
        this.selectedAnswars = selectedAnswars;
        screenTriger = 'ResultScreen';
      }
      else{
      screenTriger = 'QuestionsScreen';
      }
    });
  }

  Widget get currentScreen {
    if (screenTriger == 'StartScreen') {
      return StartScreen(
        onClick: switchScreen,
      );
    } else if (screenTriger == 'QuestionsScreen') {
      return QuestionsScreen(
        onQuizEnd: switchScreen,
      );
    } else {
      return ResultScreen(selectedAnswars: selectedAnswars!,onRestartClick: switchScreen,);
    }
  }
}
