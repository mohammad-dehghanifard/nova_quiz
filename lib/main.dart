import 'package:flutter/material.dart';
import 'package:nova_quiz/core/constants/app_colors.dart';
import 'package:nova_quiz/pages/home_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale("fa")],
      locale: const Locale("fa"),
      title: 'Nova Quiz',
      theme: ThemeData(
        fontFamily: "shabnam",
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
