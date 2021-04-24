import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_text_styles.dart';
import 'package:flutter_application_1/shared/widgets/progress_indicator/progress_indicator.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int currentPage;
  final int length;

  const QuestionIndicatorWidget({
    Key? key,
    required this.currentPage,
    required this.length
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Questão $currentPage", style: AppTextStyles.body),
              Text("de $length", style: AppTextStyles.body)
            ],
          ),
          SizedBox(height: 16,),
          ProgressIndicatorWidget(value: currentPage/length)
        ],
      )
    );
  }
}