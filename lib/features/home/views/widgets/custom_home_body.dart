import 'package:flutter/material.dart';
import 'package:quiz_app/core/utils/app_colors.dart';
import 'package:quiz_app/core/utils/app_texts.dart';
import 'package:quiz_app/features/home/views/widgets/custom_home_divider.dart';
import 'package:quiz_app/features/home/views/widgets/custom_result_dialog.dart';
import '../../date/models/question_model.dart';

class CustomHomeBody extends StatefulWidget {
  const CustomHomeBody({super.key});
  @override
  State<CustomHomeBody> createState() => _CustomHomeBodyState();
}

class _CustomHomeBodyState extends State<CustomHomeBody> {
  int score = 0;
  List<QuestionModel> questions = [
    QuestionModel(
        correctAnswer: 'كليه حسابات ومعلومات',
        answers: [
          'كليه حسابات ومعلومات',
          'كليه علوم',
          'كليه طب اسنان',
          'كليه هندسه'
        ],
        title: 'أفضل كليه ف مصر',
        selectedAnswer: null),
    QuestionModel(
        correctAnswer: 'عبدالله بن مسعود',
        answers: [
          'عبدالله بن مسعود',
          'عمر بن الخطاب',
          'عبدالله بن بكر',
          'سليمان بن مسعود'
        ],
        title: 'ماهو اول صحابي قرا القران ',
        selectedAnswer: null),
    QuestionModel(
        correctAnswer: 'الاخلاص',
        answers: ['الاخلاص', 'الفاتحه', 'البقره', 'الواقعه'],
        title: 'السوره التي تعادل نصف القران',
        selectedAnswer: null),
    QuestionModel(
        correctAnswer: 'مره واحده',
        answers: ['مره واحده', 'مرتين', 'ثلاث مرات', 'اربع مرات'],
        title: 'كم مره حج رسول الله',
        selectedAnswer: null),
    QuestionModel(
        correctAnswer: 'ام سلمة',
        answers: ['السيده خديجه', 'ام سلمة', 'ام امنيه', 'ام الهانم'],
        title: 'ماهي اخر زوجه من زوجات النبي',
        selectedAnswer: null),


  ];

  int questionIndex = 0;
  plusQuestionIndex() {
    if (questionIndex < questions.length - 1) {
      if (questions[questionIndex].selectedAnswer != null) {
        questionIndex += 1;
        setState(() {});
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Enter the Answer")));
      }
    } else {
      CheckAnswer();
      showDialog(context: context, builder: (context){
        return CustomResultDialog(

            score: score,
            length: questions.length,
            questions: questions,
            click: () {
              score = 0;
              questionIndex = 0;
              ChangeSelectedAnswerToNull();
              Navigator.pop(context);
              setState(() {

              });
            },
            close: () {
              score = 0;
              Navigator.pop(context);
              setState(() {

              });
            },
        );
      });
    }
  }

  CheckAnswer(){
    for(int i = 0; i < questions.length; i++){
      if(questions[i].correctAnswer==questions[i].selectedAnswer){
        score += 1;
      }
    }
  }

  ChangeSelectedAnswerToNull(){
    for(int i = 0; i < questions.length; i++){
      questions[i].selectedAnswer = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(120, 0, 0, 0),
          child: Text(
            questions[questionIndex].title,
            style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        CustomHomeDivider(),
        ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return RadioListTile(
              value: questions[questionIndex].answers[index],
              title: Text(
                questions[questionIndex].answers[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              groupValue: questions[questionIndex].selectedAnswer,
              onChanged: (value) {
                questions[questionIndex].selectedAnswer = value;
                setState(() {});
              },
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 20,
            );
          },
          itemCount: questions[questionIndex].answers.length,
        ),
        CustomHomeDivider(),
        SizedBox(
          height: 30,
        ),
        InkWell(
          onTap: () {
            setState(() {
              plusQuestionIndex();
            }

            );
          },
    child: Container(
    decoration: BoxDecoration(
    color: AppColors.primaryColor,
    borderRadius: BorderRadius.circular(2,),
    ),
    width: 110,
    height: 40,
    child: Center(

    child: Text(
    AppTexts.next,


    style: TextStyle(color: AppColors.white,fontWeight: FontWeight.w700),

    ),

    ),
    ),
            ),



      ],

    );
  }
}
