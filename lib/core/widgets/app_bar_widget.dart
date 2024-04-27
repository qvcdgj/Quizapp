import 'package:flutter/material.dart';
import 'package:quiz_app/core/utils/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({super.key, required this.name});
  String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 106,
      width: 375,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30),),
      ),
      child: Text(name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: AppColors.white),),
    );
  }
}
