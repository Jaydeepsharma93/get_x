import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../nevigate or theme change/controller/themechange.dart';
import '../controller/quizacheck.dart';

class QuizApp extends StatelessWidget {
  final ThemeChange themeChange = Get.find();
  final QuizCheck quizCheck = Get.find();

  QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
        centerTitle: true,
        actions: [
          Obx(
            () => Switch(
              value: themeChange.isDark.value,
              onChanged: (value) {
                themeChange.changeTheme(value);
              },
            ),
          )
        ],
      ),
      body: Obx(
        () {
          if (quizCheck.isComplete.value) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Quiz Complete!',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Your Score: ${quizCheck.correctAns}',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      quizCheck.restartQuiz();
                    },
                    child: Text('Restart Quiz'),
                  ),
                ],
              ),
            );
          } else {
            final question = quizCheck.currentQuestion;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Text(
                      question.question.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22,letterSpacing: 1,fontWeight: FontWeight.w600),
                    ),
                    ...List.generate(
                      question.options!.length,
                      (index) => ElevatedButton(
                        onPressed: () => quizCheck.checkAnswer(index),
                        child: Text(question.options![index]),
                      ),
                    ),
                    Spacer(),
                    Text('Score: ${quizCheck.correctAns}'),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
