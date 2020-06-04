import 'package:quizzler/questionset.dart';

class QuizBrain {
  int _questionNumber = 0;

  void nextQuestion(){
    if (_questionNumber < _questionList.length -1) {
    _questionNumber++;
    }
  }

  bool isFinished(){
    return (_questionNumber == _questionList.length -1);
  }
  
  void resetQuestionNumber(){
    _questionNumber = 0;
  }
  

  List<QuestionSet> _questionList = [
    QuestionSet('You can lead a cow down stairs but not up stairs.', false),
    QuestionSet('Approximately one quarter of human bones are in the feet.', true),
    QuestionSet('A slug\'s blood is green.', true)
  ];

  String getQuestion(){
    return _questionList[_questionNumber].question;
  }
  bool getAnswer(){
    return _questionList[_questionNumber].correctAnswer;
  }
  
  int getTotalQuestions(){
    return _questionList.length;
  }
}