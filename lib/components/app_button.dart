import 'package:flutter/material.dart';

class CvButton extends StatelessWidget {
  final void Function()? onTap;
  final String title;
  final Color? color;

  const CvButton({
    this.color,
    this.onTap,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: height * 0.05,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
