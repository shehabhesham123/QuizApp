import 'package:flutter/material.dart';
import 'package:section2/ui/result.dart';
import 'package:section2/ui/start.dart';
import 'package:section2/ui/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String screenTriger = 'StartScreen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
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
        screenTriger = 'ResultScreen';
      }
    });
  }

  Widget get currentScreen {
    if (screenTriger == 'StartScreen') {
      return StartScreen(onClick: switchScreen);
    } else if (screenTriger == 'QuestionsScreen') {
      return QuestionsScreen(
        onQuizEnd: switchScreen,
      );
    } else {
      return const ResultScreen();
    }
  }
}
