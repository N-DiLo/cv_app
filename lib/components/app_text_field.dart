import 'package:cv_app/components/styles.dart';
import 'package:cv_app/shared/app_colors.dart';
import 'package:flutter/material.dart';

class CvInput extends StatelessWidget {
  final String hintText;
  final String labelText;
  final Widget? leading;
  final TextInputType? keyboardType;
  final TextEditingController? controller;

  final roundBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
  );

  CvInput({
    super.key,
    this.labelText = '',
    this.hintText = '',
    this.leading,
    this.controller,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        SizedBox(
          height: height * 0.005,
        ),
        TextFormField(
          keyboardType: keyboardType,
          style: bodySmall.copyWith(color: kcGreyColor),
          controller: controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(10),
            hintText: hintText,
            suffixIcon: leading,
            enabledBorder: roundBorder.copyWith(
              borderSide: const BorderSide(
                color: kcPrimaryColor,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: roundBorder.copyWith(
              borderSide: const BorderSide(
                color: kcPrimaryColor,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        SizedBox(
          height: height * 0.025,
        ),
      ],
    );
  }
}
