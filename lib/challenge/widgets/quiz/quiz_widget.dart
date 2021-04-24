import 'package:flutter/material.dart';
import 'package:flutter_application_1/challenge/widgets/awnser/awnser_widget.dart';
import 'package:flutter_application_1/core/app_text_styles.dart';
import 'package:flutter_application_1/shared/models/question_model.dart';

class QuizWidget extends StatelessWidget {
  final QuestionModel question;

  const QuizWidget({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 64),
          Text(
            question.title,
            style: AppTextStyles.heading
          ),
          SizedBox(height: 24),
          ...question.awnsers.map(
              (e) => AwnserWidget(
                isRight: e.isRight,
                title: e.title
              ),
            ).toList(),
        ],
      ),
    );
  }
}