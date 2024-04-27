import 'package:flutter/material.dart';
import 'package:quiz_app/core/utils/app_texts.dart';
import 'package:quiz_app/core/widgets/app_bar_widget.dart';
import 'package:quiz_app/features/home/views/widgets/custom_home_body.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          leading: Text(""),
          flexibleSpace: CustomAppBar(name: AppTexts.appName),
          toolbarHeight: 106,
        ),
        body:const CustomHomeBody(),
      ),
    );
  }
}
