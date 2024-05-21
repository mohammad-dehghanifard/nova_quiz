class Question {

  final String question;
  final List<String> answers;
  final int correctAnswerIndex;

  Question({
    required this.question,
    required this.answers,
    required this.correctAnswerIndex
});
}

final List<Question> questionList = [
  Question(
      question: "پایتخت ایران کجاست؟",
      answers: ["بوشهر","اهواز","تهران","کرمانشاه"],
      correctAnswerIndex: 2
  ),
  Question(
      question: "کدام پادشاه ایران سه امپراطور روم را شکست داد؟",
      answers: ["مهرداد اول اشکانی","شاپور اول ساسانی","خسرواونشیروان","بهرام گور"],
      correctAnswerIndex: 1
  ),
  Question(
      question: "به کدام شهر ایران نصف جهان میگونید؟",
      answers: ["اصفهان","کرج","مشهد","خرمشهر"],
      correctAnswerIndex: 0
  ),
  Question(
      question: "شاهنامه اثر چه کسی است؟",
      answers: ["حافظ","مولانا","شمس","فردوسی"],
      correctAnswerIndex: 3
  ),
  Question(
      question: "در داستان های شاهنامه چه کسی ضحاک را شکست داد؟",
      answers: ["داریوش","کاوه اهنگر","فریدون","جمشید"],
      correctAnswerIndex: 2
  ),
];