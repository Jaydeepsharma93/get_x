import 'package:get/get.dart';
import '../model/modelclass.dart';

class QuizCheck extends GetxController{
  final List<Question> _questions = questions;
  var currentQusIndex = 0.obs;
  var correctAns = 0.obs;
  var wrongAns = 0.obs;
  var isComplete = false.obs;
  Question get currentQuestion => _questions[currentQusIndex.value];
  void checkAnswer(int selectedIndex){
    if(selectedIndex == currentQuestion.correctIndex){
      correctAns++;
      wrongAns.value = 0;
    }else{
      wrongAns.value++;
      if(wrongAns.value >= 3){
        _resetQuiz();
        return;
      }
    }
    if(currentQusIndex.value + 1 >= _questions.length){
      isComplete(true);
    }else{
      currentQusIndex.value++;
    }
  }
  void _nextQuestion() {
    if (currentQusIndex.value + 1 >= _questions.length) {
      currentQusIndex.value = 0; // Loop through questions
    } else {
      currentQusIndex.value++;
    }
  }
  void _resetQuiz() {
    currentQusIndex.value = 0;
    correctAns.value = 0;
    wrongAns.value = 0;
  }
  void restartQuiz() {
    _resetQuiz();
  }
}