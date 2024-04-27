
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/features/check_Answer/view_answer.dart';


import '../home/date/models/question_model.dart';

class NewPageBody extends StatelessWidget {
  const NewPageBody({super.key, required this.questions});
 final List<QuestionModel> questions ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: ListView(
        children: [
         ...questions.map((e) => ViewAnswer(
           questionModel: e,
          ),

      ),
    ]
    ),
    );

  }
}
