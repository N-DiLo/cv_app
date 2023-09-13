import 'package:flutter/material.dart';

import 'app_text.dart';

class CvButton extends StatelessWidget {
  final void Function()? onTap;
  final String title;
  final Color? color;
  final double? width, height;
  final TextStyle? style;

  const CvButton({
    this.color,
    this.height,
    this.width,
    this.style,
    this.onTap,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: CvText(
            text: title,
            style: style,
          ),
        ),
      ),
    );
  }
}
