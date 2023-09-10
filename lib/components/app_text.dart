import 'package:cv_app/components/styles.dart';
import 'package:flutter/widgets.dart';

import '../shared/app_colors.dart';

class CvText extends StatelessWidget {
  final String text;
  final bool? softWrap;
  final TextStyle? style;

  CvText.bodyLarge(
    this.text,
    this.softWrap, {
    Color color = kcTextColor,
    super.key,
  }) : style = bodyLarge.copyWith(
          color: color,
        );
  CvText.bodyMedium(
    this.text,
    this.softWrap, {
    Color color = kcTextColor,
    super.key,
  }) : style = bodyMedium.copyWith(
          color: color,
        );

  CvText.bodySmall(
    this.text,
    this.softWrap, {
    Color color = kcTextColor,
    super.key,
  }) : style = bodySmall.copyWith(
          color: color,
        );

  CvText.itleLarge(
    this.text,
    this.softWrap, {
    Color color = kcTextColor,
    super.key,
  }) : style = titleLarge.copyWith(
          color: color,
        );

  CvText.titleMedium(
    this.text,
    this.softWrap, {
    Color color = kcTextColor,
    super.key,
  }) : style = bodyMedium.copyWith(
          color: color,
        );

  CvText.titleSmall(
    this.text,
    this.softWrap, {
    Color color = kcTextColor,
    super.key,
  }) : style = titleSmall.copyWith(
          color: color,
        );

  const CvText({
    this.softWrap,
    required this.text,
    this.style,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: softWrap,
      textScaleFactor: MediaQuery.textScaleFactorOf(context),
      style: style,
    );
  }
}
