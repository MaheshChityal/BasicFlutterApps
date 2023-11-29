import 'package:flutter/material.dart';
import 'package:quizz_app/widgets/questions_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen( this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            color: const Color.fromARGB(150, 255, 255, 255),
            width: 300,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
                fontSize: 28, color: Color.fromARGB(255, 203, 198, 212)),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              onPressed: () {
                startQuiz();
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 203, 198, 212),
              ),
              icon: Icon(Icons.arrow_right_alt),
              label: const Text(
                'Start Quiz',
              ))
        ],
      ),
    );
  }
}
