import 'package:cv_app/components/styles.dart';
import 'package:cv_app/shared/app_colors.dart';
import 'package:flutter/material.dart';

class CvInput extends StatefulWidget {
  final int? maxLines;
  final String text;
  final String labelText;
  final Widget? leading;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;

  const CvInput({
    super.key,
    required this.onChanged,
    this.maxLines = 1,
    this.labelText = '',
    this.leading,
    this.keyboardType,
    required this.text,
  });

  @override
  State<CvInput> createState() => _CvInputState();
}

class _CvInputState extends State<CvInput> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.text);
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  final roundBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
  );

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelText,
          style: bodySmall,
        ),
        SizedBox(
          height: height * 0.005,
        ),
        TextFormField(
          controller: controller,
          maxLines: widget.maxLines,
          onChanged: widget.onChanged,
          keyboardType: widget.keyboardType,
          style: bodySmall.copyWith(color: kcTextColor),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(10),
            suffixIcon: widget.leading,
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
