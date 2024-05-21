import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:nova_quiz/core/constants/app_colors.dart';
import 'package:nova_quiz/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context) => const HomePage(),));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Image.asset("assets/images/logo.png"),
                const SizedBox(height: 16),
                const SpinKitWave(
                  color: AppColors.yellow,
                  size: 35.0,
                ),
                const Spacer(),
                const Text(
                  "ورژن : 1.0.0",
                  style: TextStyle(color: AppColors.lightGrey),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
