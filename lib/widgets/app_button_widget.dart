import 'package:flutter/material.dart';
import 'package:nova_quiz/core/constants/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key, required this.text, required this.onTap,
  });
  final String text;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                  color: AppColors.darkYellow,
                  offset: Offset(0,5)
              )
            ]
        ),
        child:  Center(child: Text(text,style:const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.container
        ))),
      ),
    );
  }
}