import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color fontColor;
  final Color borderColor;
  final Color overlayBackgrounColor;
  final VoidCallback onTap;

  NextButtonWidget({
    Key? key,
    required this.label,
    required this.backgroundColor,
    required this.fontColor,
    required this.borderColor,
    required this.overlayBackgrounColor,
    required this.onTap,
  });

  NextButtonWidget.green({required String label, required VoidCallback onTap}) 
    : this.backgroundColor = AppColors.darkGreen,
      this.fontColor = AppColors.white,
      this.borderColor = AppColors.green,
      this.overlayBackgrounColor = AppColors.green,
      this.label = label,
      this.onTap = onTap;
  
  NextButtonWidget.white({required String label, required VoidCallback onTap}) 
    : this.backgroundColor = AppColors.white,
      this.fontColor = AppColors.grey,
      this.borderColor = AppColors.border,
      this.overlayBackgrounColor = AppColors.lightGrey,
      this.label = label,
      this.onTap = onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            backgroundColor
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            )
          ),
          side: MaterialStateProperty.all(
            BorderSide(color: AppColors.border)
          ),
          overlayColor: MaterialStateProperty.all(
            overlayBackgrounColor
          )
        ), 
        onPressed: onTap, 
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: fontColor
          )
      )),
    );
  }
}