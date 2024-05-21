import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nova_quiz/core/constants/app_colors.dart';
import 'package:nova_quiz/pages/questions_page.dart';
import 'package:nova_quiz/widgets/app_button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final buttonList = [
      AppButton(
        onTap: () {
          Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const QuestionsPage(),
              ));
        },
        text: "شروع بازی",
      ),
      AppButton(
        onTap: () {},
        text: "راهنمای بازی",
      ),
      AppButton(
        onTap: () {},
        text: "تنظیمات بازی",
      ),
    ];
    return  Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png"),
              const SizedBox(height: 12),
              Column(
                children: List.generate(
                    buttonList.length,
                        (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AppButton(text: buttonList[index].text, onTap: buttonList[index].onTap),
                        )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


