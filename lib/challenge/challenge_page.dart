import 'package:flutter/material.dart';
import 'package:flutter_application_1/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:flutter_application_1/challenge/widgets/quiz/quiz_widget.dart';

class ChallengePage extends StatefulWidget {
  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(child: QuestionIndicatorWidget()),
      ),
      body: QuizWidget(
        title: 'Oque o Flutter faz em sua totalidade?'
      )
    );
  }
}