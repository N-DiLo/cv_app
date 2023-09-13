import 'package:flutter/material.dart';

import '../../components/app_text_field.dart';

Widget editField(
  String labelText,
  String text,
  TextInputType? keyboardType,
  ValueChanged<String> onChanged,
) {
  return CvInput(
    labelText: labelText,
    text: text,
    keyboardType: keyboardType,
    onChanged: onChanged,
  );
}
