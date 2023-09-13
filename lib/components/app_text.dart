import 'package:cv_app/components/styles.dart';
import 'package:flutter/widgets.dart';

import '../shared/app_colors.dart';

class CvText extends StatelessWidget {
  final String text;
  final bool? softWrap;
  final TextStyle? style;
  final TextAlign? textAlign;

  CvText.bodyLarge(
    this.text,
    this.softWrap, {
    Color color = kcTextColor,
    super.key,
    this.textAlign,
  }) : style = bodyLarge.copyWith(
          color: color,
        );
  CvText.bodyMedium(
    this.text,
    this.softWrap, {
    Color color = kcTextColor,
    super.key,
    this.textAlign,
  }) : style = bodyMedium.copyWith(
          color: color,
        );

  CvText.bodySmall(
    this.text,
    this.softWrap, {
    Color color = kcTextColor,
    super.key,
    this.textAlign,
  }) : style = bodySmall.copyWith(
          color: color,
        );

  CvText.titleLarge(
    this.text,
    this.softWrap, {
    Color color = kcTextColor,
    super.key,
    this.textAlign,
  }) : style = titleLarge.copyWith(
          color: color,
        );

  CvText.titleMedium(
    this.text,
    this.softWrap, {
    Color color = kcTextColor,
    super.key,
    this.textAlign,
  }) : style = bodyMedium.copyWith(
          color: color,
        );

  CvText.titleSmall(
    this.text,
    this.softWrap, {
    Color color = kcTextColor,
    super.key,
    this.textAlign,
  }) : style = titleSmall.copyWith(
          color: color,
        );

  const CvText({
    this.softWrap,
    required this.text,
    this.style,
    this.textAlign,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      softWrap: softWrap,
      textScaleFactor: MediaQuery.textScaleFactorOf(context),
      style: style,
    );
  }
}
