import 'package:flutter/material.dart';
import 'package:flutter_application_1/challenge/widgets/quiz/quiz_widget.dart';
import 'package:flutter_application_1/core/app_colors.dart';
import 'package:flutter_application_1/home/home_controller.dart';
import 'package:flutter_application_1/home/home_state.dart';
import 'package:flutter_application_1/home/widgets/appbar/app_bar_widget.dart';
import 'package:flutter_application_1/home/widgets/level_button/level_button_widget.dart';
import 'package:flutter_application_1/home/widgets/quizcard/quiz_card_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super (key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.getUser();
    controller.getQuizzes();
    controller.stateNotifier.addListener(() {
      setState((){});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (controller.state == HomeState.success) {
      return Scaffold(
        appBar: AppBarWidget(user: controller.user!),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LevelButtonWidget(label: "Fácil"),
                    LevelButtonWidget(label: "Médio"),
                    LevelButtonWidget(label: "Difícil"),
                    LevelButtonWidget(label: "Perito"),
                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  crossAxisCount: 2,
                  children: controller.quizzes!.map((e) => QuizCardWidget(
                    title: e.title, 
                    completed: "${e.questionAnswered}/${e.questions.length}",
                    percent: e.questionAnswered/e.questions.length,
                  )).toList(),
                ),
              )
            ],
          ),
        )
      );
    } else {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.darkGreen),
          )
        )
      );
    }
  }
}