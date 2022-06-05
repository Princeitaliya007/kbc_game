import 'dart:ui';

class KbcQuiz{
  final int id;
  final String question;
  final String ans;
  final String a1;
  final String a2;
  final String a3;
  final String a4;
  final Color col1;
  final Color col2;

  KbcQuiz({
    required this.id,
    required this.question,
    required this.ans,
    required this.a1,
    required this.a2,
    required this.a3,
    required this.a4,
    required this.col1,
    required this.col2,
});
}