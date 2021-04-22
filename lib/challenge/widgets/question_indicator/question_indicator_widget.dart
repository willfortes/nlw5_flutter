import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_text_styles.dart';
import 'package:flutter_application_1/shared/widgets/progress_indicator/progress_indicator.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  const QuestionIndicatorWidget({Key? key}) : super(key: key);

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
              Text("Questão 04", style: AppTextStyles.body),
              Text("de 10", style: AppTextStyles.body)
            ],
          ),
          SizedBox(height: 16,),
          ProgressIndicatorWidget(value: 0.3)
        ],
      )
    );
  }
}