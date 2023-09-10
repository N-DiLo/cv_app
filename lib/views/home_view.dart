import 'package:cv_app/components/app_button.dart';
import 'package:cv_app/components/app_text.dart';
import 'package:cv_app/components/app_text_field.dart';
import 'package:cv_app/components/styles.dart';
import 'package:cv_app/shared/app_colors.dart';
import 'package:cv_app/views/edit_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  Widget editField(
      String labelText, String hintText, TextInputType keyboardType) {
    return CvInput(
      labelText: labelText,
      hintText: hintText,
      keyboardType: keyboardType,
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kcBackgroundColor,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, EditView.routeName);
            },
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  CvText(
                    text: 'Edit CV',
                    style: bodySmall.copyWith(
                      color: kcTextColor,
                    ),
                  ),
                  const Icon(
                    Icons.edit,
                    size: 20,
                    color: kcPrimaryColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: kcBackgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.045,
        ),
        child: ListView(
          children: [
            SizedBox(
              height: height * 0.015,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  maxRadius: height * 0.045,
                  backgroundImage: const AssetImage(
                    'assets/passport.jpg',
                  ),
                ),
                Column(
                  children: [
                    CvText.bodyLarge(
                      'Egbekwu NwaneDiLobu',
                      true,
                      color: kcTextColor,
                    ),
                    CvText(
                      text: 'egbekwunwanedilobu@gmail.com',
                      style: titleSmall.copyWith(
                          color: kcPrimaryColor, fontWeight: FontWeight.w500),
                    ),
                    CvText(
                      text: 'https://github.com/N-DiLo',
                      style: titleSmall.copyWith(
                          color: kcTextColor, fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        CvText(
                          text: 'Slack: DiLo',
                          style: titleSmall.copyWith(
                              color: kcTextColor, fontSize: 12),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        CvText(
                          text: '+234 905 130 9102',
                          style: titleSmall.copyWith(
                            fontSize: 12,
                            color: kcTextColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            CvText(
              text: 'Objective',
              style: bodyMedium.copyWith(
                color: kcTextColor,
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            CvButton(
              title: 'Save Now',
              color: kcPrimaryColor,
              style: bodyMedium.copyWith(
                color: kcBackgroundColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
