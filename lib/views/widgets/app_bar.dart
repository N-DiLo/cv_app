import 'package:flutter/material.dart';

import '../../components/styles.dart';
import '../../shared/app_colors.dart';
import '../../components/app_text.dart';

AppBar cvAppBar(
  BuildContext context,
  String? title,
  IconData? icons,
  void Function()? passData,
) =>
    AppBar(
      elevation: 0,
      backgroundColor: kcBackgroundColor,
      actions: [
        InkWell(
          onTap: passData,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                CvText(
                  text: title!,
                  style: bodySmall,
                ),
                Icon(
                  icons,
                  size: 20,
                  color: kcPrimaryColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
