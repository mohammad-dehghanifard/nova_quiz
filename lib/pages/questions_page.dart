import 'package:flutter/material.dart';
import 'package:nova_quiz/core/constants/app_colors.dart';
import 'package:nova_quiz/widgets/app_button_widget.dart';
import 'package:nova_quiz/widgets/question_button_widget.dart';

class QuestionsPage extends StatelessWidget {
  const QuestionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Text("سوال 1",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
              const SizedBox(height: 24),
              const Text("پایتخت ایران کجاست؟!",style: TextStyle(color: Colors.white,fontSize: 16),),
              const SizedBox(height: 64),
              // question buttons
              QuestionButton(onTap: () {},text: "تهران"),
              const SizedBox(height: 24),
              QuestionButton(onTap: () {},text: "بوشهر"),
              const SizedBox(height: 24),
              QuestionButton(onTap: () {},text: "خراسان"),
              const SizedBox(height: 24),
              QuestionButton(onTap: () {},text: "مازندران"),
              const Spacer(),
              // go next question
              AppButton(text: "ثبت پاسخ و رفتن به سوال بعد",onTap: () {},)
            ],
          ),
        ),
      ),
    );
  }
}

