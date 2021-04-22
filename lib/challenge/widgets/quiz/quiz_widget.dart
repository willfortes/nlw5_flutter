import 'package:flutter/material.dart';
import 'package:flutter_application_1/challenge/widgets/awnser/awnser_widget.dart';
import 'package:flutter_application_1/core/app_text_styles.dart';

class QuizWidget extends StatelessWidget {
  final String title;

  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 24),
          Text(
            title,
            style: AppTextStyles.heading
          ),
          SizedBox(height: 24),
          AwnserWidget(title: "Possibilita a criação de aplicativoscompilados nativamente")
        ],
      ),
    );
  }
}