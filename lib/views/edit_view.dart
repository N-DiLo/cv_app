import 'package:flutter/material.dart';

import '../components/app_button.dart';
import '../components/app_text.dart';
import '../components/app_text_field.dart';
import '../components/styles.dart';
import '../shared/app_colors.dart';

class EditView extends StatefulWidget {
  const EditView({super.key});

  static const routeName = '/edit-view';

  @override
  State<EditView> createState() => _EditViewState();
}

class _EditViewState extends State<EditView> {
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
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                CvText(
                  text: 'Save CV',
                  style: bodySmall.copyWith(
                    color: kcTextColor,
                  ),
                ),
                const Icon(
                  Icons.save_outlined,
                  size: 20,
                  color: kcPrimaryColor,
                ),
              ],
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
              height: height * 0.02,
            ),
            CvText(
              text: 'Personal Details',
              style: bodyMedium.copyWith(
                color: kcTextColor,
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: kcBorderColor,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  editField('Full name:', 'full name', TextInputType.name),
                  editField(
                    'Email address:',
                    'email',
                    TextInputType.emailAddress,
                  ),
                  editField(
                    'Slack name:',
                    'slack username',
                    TextInputType.name,
                  ),
                  editField(
                    'GitHub:',
                    'github link',
                    TextInputType.none,
                  ),
                  editField(
                    'Phone Number:',
                    '+234 xxx-xxxx-xxx',
                    TextInputType.phone,
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.015,
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
            CvText(
              text: 'Work Experience',
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
