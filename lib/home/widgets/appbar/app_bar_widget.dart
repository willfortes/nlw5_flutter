import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_gradients.dart';
import 'package:flutter_application_1/core/app_text_styles.dart';
import 'package:flutter_application_1/home/widgets/scorecard/score_card_widget.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget() : super(
    preferredSize: Size.fromHeight(250),
    child: Container(
      height: 250,
      child: Stack(
        children: [
          Container(
            height: 161,
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              gradient: AppGradients.linear
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Olá, ", 
                    style: AppTextStyles.title,
                    children: [
                      TextSpan(
                        text: "Will DEV", 
                        style: AppTextStyles.titleBold
                      )
                    ]
                  ), 
                ),
                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage("https://avatars.githubusercontent.com/u/35111438?v=4")
                    ) 
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.0, 1.0),
            child: ScoreCardWidget()
          )
        ],
      ) 
    )
  );

  
}