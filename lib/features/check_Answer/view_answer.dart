
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/core/utils/app_colors.dart';
import 'package:quiz_app/features/home/date/models/question_model.dart';

import '../home/views/widgets/custom_home_divider.dart';

class ViewAnswer extends  StatelessWidget {
  const ViewAnswer({super.key, required this.questionModel});

  final QuestionModel questionModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      textDirection: TextDirection.rtl,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Text(questionModel.title,style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),),
        ),
        CustomHomeDivider(),
        Wrap(textDirection: TextDirection.rtl,
          children: [
    ...questionModel.answers.map((answer) =>   SizedBox(
    width: MediaQuery.sizeOf(context).width/2 - 60,
    child: Padding(
      padding: const EdgeInsets.only(right: 35,left: 20),
      child: Text(answer,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 13,
          color:
          questionModel.correctAnswer == answer ?
          Colors.green:
          questionModel.correctAnswer != questionModel.selectedAnswer &&
              questionModel.selectedAnswer == answer?
          Colors.red:
             Colors.blue,
        ),
      ),
    )
    )

    )

          ],
        ),
    SizedBox(height: 10,),
        CustomHomeDivider(),
      ],
    );
  }
}
