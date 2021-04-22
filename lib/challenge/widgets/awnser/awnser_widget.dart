import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_colors.dart';
import 'package:flutter_application_1/core/app_text_styles.dart';

class AwnserWidget extends StatelessWidget {
  final String title;
  final bool isRight;
  final bool isSelected;
  
  const AwnserWidget({
    Key? key, 
    required this.title,
    this.isRight = true,
    this.isSelected = true
  }) : super(key: key);
  
  Color get _selectedColorRight => isRight ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderRight => isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight => isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardRight => isRight ? AppColors.green : AppColors.red;

  TextStyle get _selectedTextStyleRight => isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconRight => isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? _selectedColorCardRight : AppColors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(BorderSide(
            color: isSelected ? _selectedBorderCardRight : AppColors.border
          ))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Text(
                title,
                style: isSelected ? _selectedTextStyleRight : AppTextStyles.body
              ),
            ),
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: isSelected ? _selectedColorRight : AppColors.white,
                borderRadius: BorderRadius.circular(500),
                border: Border.fromBorderSide(BorderSide(
                  color: isSelected ? _selectedBorderRight : AppColors.border
                ))
              ),
              child: isSelected ? Icon(
                  _selectedIconRight, 
                  size: 16,
                  color: AppColors.white,
                ) : null,
            )
          ],
        ),
      ),
    );
  }
}