import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nova_quiz/core/constants/app_colors.dart';
import 'package:nova_quiz/models/question.dart';
import 'package:nova_quiz/pages/result_page.dart';
import 'package:nova_quiz/widgets/app_button_widget.dart';
import 'package:nova_quiz/widgets/question_button_widget.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key});

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  int questionIndex = 0;
  int? selectedAnswer;
  bool? isSelectAnswer;
  int correctAnswer = 0;
  int wrongAnswer = 0;

  bool setAnswer(int answerIndex,int correctAnswer) {
    setState(() {
      selectedAnswer = answerIndex;
    });
    return selectedAnswer == correctAnswer ? true : false;
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text("سوال ${questionIndex + 1}",style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
              const SizedBox(height: 24),
              Text(questionList[questionIndex].question,style: const TextStyle(color: Colors.white,fontSize: 16),),
              const SizedBox(height: 64),
              // question buttons
             Column(
               children: List.generate(
                   questionList[questionIndex].answers.length,
                       (index) => Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: QuestionButton(
                             onTap: () {
                             isSelectAnswer = setAnswer(index,questionList[questionIndex].correctAnswerIndex);
                             },
                             selected: index == selectedAnswer,
                             text: questionList[questionIndex].answers[index]),
                       )),
             ),
              const Spacer(),
              // go next question
              AppButton(text: "ثبت پاسخ و رفتن به سوال بعد",onTap: () {
                if(isSelectAnswer != null) {
                    isSelectAnswer! ? correctAnswer++ : wrongAnswer++;
                    selectedAnswer = null;
                    isSelectAnswer = null;

                  if(questionIndex < questionList.length - 1) {
                    questionIndex++;
                  } else {
                    Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context) => ResultPage(correctAnswer: correctAnswer,wrongAnswer: wrongAnswer,)));
                  }

                  setState(() {

                  });

                }

              },)
            ],
          ),
        ),
      ),
    );
  }
}

