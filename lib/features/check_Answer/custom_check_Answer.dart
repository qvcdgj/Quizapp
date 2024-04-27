import 'package:flutter/material.dart';
import 'package:quiz_app/core/widgets/app_bar_widget.dart';
import 'package:quiz_app/features/check_Answer/new_page_body.dart';
import '../home/date/models/question_model.dart';


class CustomCheckAnswer extends StatelessWidget {
  const CustomCheckAnswer({super.key, required this.questions, });
 final List<QuestionModel> questions;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(""),
        centerTitle: true,
        toolbarHeight: 110,
        flexibleSpace: CustomAppBar(name: 'CheckAnswer',),
      ),
      body:NewPageBody(
        questions: questions,
      ),
    );
  }
}
