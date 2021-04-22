import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/core/app_images.dart';
import 'package:flutter_application_1/home/home_state.dart';
import 'package:flutter_application_1/shared/models/awnser_model.dart';
import 'package:flutter_application_1/shared/models/question_model.dart';
import 'package:flutter_application_1/shared/models/quiz_model.dart';
import 'package:flutter_application_1/shared/models/user_model.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);

  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    
    user = UserModel(
      name: "Will DEV",
      photoUrl: "https://avatars.githubusercontent.com/u/35111438?v=4",
    );
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    quizzes = [
      QuizModel(title: "NLW5", questions: [
        QuestionModel(title: "Esta curtindo flutter?", awnsers: [
          AwnserModel(title: "Estou curtindo", isRight: true),
          AwnserModel(title: "Não estou"),
          AwnserModel(title: "As vezes sim"),
          AwnserModel(title: "Talvez de vez enquando")
        ])
      ], imagem: AppImages.blocks, level: Level.facil),
      QuizModel(title: "NLW5 2.0", questionAnswered: 1, questions: [
        QuestionModel(title: "Esta curtindo flutter?", awnsers: [
          AwnserModel(title: "Estou curtindo", isRight: true),
          AwnserModel(title: "Não estou"),
          AwnserModel(title: "As vezes sim"),
          AwnserModel(title: "Talvez de vez enquando")
        ]),
        QuestionModel(title: "Esta curtindo flutter?", awnsers: [
          AwnserModel(title: "Estou curtindo", isRight: true),
          AwnserModel(title: "Não estou"),
          AwnserModel(title: "As vezes sim"),
          AwnserModel(title: "Talvez de vez enquando")
        ])
      ], imagem: AppImages.blocks, level: Level.facil)
    ];

    state = HomeState.success;
  }
}