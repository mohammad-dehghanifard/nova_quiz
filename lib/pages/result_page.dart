import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nova_quiz/core/constants/app_colors.dart';
import 'package:nova_quiz/pages/home_page.dart';
import 'package:nova_quiz/widgets/app_button_widget.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Image.asset("assets/images/result.png",height: 280,),
                const Text("پاسخ درست : 5",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
                const SizedBox(height: 8),
                const Text("پاسخ اشتباه : 3",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
                const Spacer(),
                AppButton(text: "برگشت به صفحه اصلی", onTap: () {
                  Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context) => const HomePage(),));
                },)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
