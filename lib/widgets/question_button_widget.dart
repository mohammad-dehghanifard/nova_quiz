import 'package:flutter/material.dart';
import 'package:nova_quiz/core/constants/app_colors.dart';

class QuestionButton extends StatelessWidget {
  const QuestionButton({
    super.key, required this.onTap, required this.text, required this.selected,
  });
  final Function() onTap;
  final String text;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: selected? AppColors.primary : Colors.white.withOpacity(0.60)),
            color: AppColors.container
        ),
        child:  Center(child: Text(text,style: const TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}
