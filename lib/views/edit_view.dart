import 'package:cv_app/components/app_layouts.dart';
import 'package:cv_app/utils/app_arguments.dart';
import 'package:cv_app/views/widgets/edit_widget.dart';
import 'package:flutter/material.dart';

import '../components/app_button.dart';
import '../components/app_text.dart';
import '../components/app_text_field.dart';
import '../components/styles.dart';
import '../shared/app_colors.dart';
import './widgets/app_bar.dart';
import 'widgets/app_box.dart';

class EditView extends StatefulWidget {
  const EditView({super.key});

  static const routeName = '/edit-view';

  @override
  State<EditView> createState() => _EditViewState();
}

class _EditViewState extends State<EditView> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    var uData = ModalRoute.of(context)!.settings.arguments as EditArgs;

    var changes = [
      uData.name,
      uData.mail,
      uData.github,
      uData.slack,
      uData.phone,
      uData.obj,
      uData.dob,
      uData.lga,
      uData.state,
      uData.twt,
      uData.org,
      uData.exp,
      uData.year,
      uData.skill,
    ];

    editData() {
      Navigator.pop(
        context,
        changes,
      );
    }

    return ScreenLayout(
      mobile: OrientationLayout(
        portrait: Scaffold(
          appBar: cvAppBar(
            context,
            'Save CV',
            Icons.save_outlined,
            editData,
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
                  text: 'Details',
                  style: bodyMedium.copyWith(
                    color: kcTextColor,
                  ),
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                AppBox(
                  children: [
                    editField(
                      'Full name:',
                      '${uData.name}',
                      TextInputType.name,
                      (name) => setState(
                        () => uData.name = name,
                      ),
                    ),
                    editField(
                      'Email address:',
                      '${uData.mail}',
                      TextInputType.emailAddress,
                      (mail) => setState(
                        () => uData.mail = mail,
                      ),
                    ),
                    editField(
                      'GitHub profile:',
                      '${uData.github}',
                      TextInputType.name,
                      (github) => setState(
                        () => uData.github = github,
                      ),
                    ),
                    editField(
                      'Slack name:',
                      '${uData.slack}',
                      TextInputType.name,
                      (slack) => setState(
                        () => uData.slack = slack,
                      ),
                    ),
                    editField(
                      'Phone number:',
                      '${uData.phone}',
                      TextInputType.phone,
                      (phone) => setState(
                        () => uData.phone = phone,
                      ),
                    ),
                    CvInput(
                      labelText: 'Objectives:',
                      text: '${uData.obj}',
                      onChanged: (objctv) => setState(
                        () => uData.obj = objctv,
                      ),
                      maxLines: 4,
                    ),
                    editField(
                      'Date of Birth:',
                      '${uData.dob}',
                      TextInputType.phone,
                      (date) => setState(
                        () => uData.dob = date,
                      ),
                    ),
                    editField(
                      'Local Govt. Area:',
                      '${uData.lga}',
                      TextInputType.name,
                      (local) => setState(
                        () => uData.lga = local,
                      ),
                    ),
                    editField(
                      'State of Origin:',
                      '${uData.state}',
                      TextInputType.name,
                      (state) => setState(
                        () => uData.state = state,
                      ),
                    ),
                    editField(
                      'Twitter Connect:',
                      '${uData.twt}',
                      TextInputType.name,
                      (twitter) => setState(
                        () => uData.twt = twitter,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                CvText(
                  text: 'Experience',
                  style: bodyMedium.copyWith(
                    color: kcTextColor,
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                AppBox(
                  children: [
                    editField(
                      'Name of Organization:',
                      '${uData.org}',
                      TextInputType.name,
                      (orga) => setState(
                        () => uData.org = orga,
                      ),
                    ),
                    editField(
                      'Position:',
                      '${uData.exp}',
                      TextInputType.name,
                      (exp) => setState(() {
                        uData.exp = exp;
                      }),
                    ),
                    editField(
                      'End Date:',
                      '${uData.year}',
                      TextInputType.phone,
                      (year) => setState(
                        () => uData.year = year,
                      ),
                    ),
                    editField(
                      'Skills:',
                      '${uData.skill}',
                      TextInputType.name,
                      (skills) => setState(
                        () => uData.skill = skills,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                CvButton(
                  onTap: () => Navigator.pop(
                    context,
                    changes,
                  ),
                  width: double.infinity,
                  height: height * 0.06,
                  title: 'Save Now',
                  color: kcPrimaryColor,
                  style: bodyMedium.copyWith(
                    color: kcBackgroundColor,
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
              ],
            ),
          ),
        ),
        landscape: Scaffold(
          appBar: cvAppBar(
            context,
            'Save CV',
            Icons.save_outlined,
            editData,
          ),
          backgroundColor: kcBackgroundColor,
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.06,
            ),
            child: ListView(
              children: [
                SizedBox(
                  height: height * 0.02,
                ),
                CvText(
                  text: 'Details',
                  style: bodyMedium.copyWith(
                    color: kcTextColor,
                  ),
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                AppBox(
                  children: [
                    editField(
                      'Full name:',
                      '${uData.name}',
                      TextInputType.name,
                      (name) => setState(
                        () => uData.name = name,
                      ),
                    ),
                    editField(
                      'Email address:',
                      '${uData.mail}',
                      TextInputType.emailAddress,
                      (mail) => setState(
                        () => uData.mail = mail,
                      ),
                    ),
                    editField(
                      'GitHub profile:',
                      '${uData.github}',
                      TextInputType.name,
                      (github) => setState(
                        () => uData.github = github,
                      ),
                    ),
                    editField(
                      'Slack name:',
                      '${uData.slack}',
                      TextInputType.name,
                      (slack) => setState(
                        () => uData.slack = slack,
                      ),
                    ),
                    editField(
                      'Phone number:',
                      '${uData.phone}',
                      TextInputType.phone,
                      (phone) => setState(
                        () => uData.phone = phone,
                      ),
                    ),
                    CvInput(
                      labelText: 'Objectives:',
                      text: '${uData.obj}',
                      onChanged: (objctv) => setState(
                        () => uData.obj = objctv,
                      ),
                      maxLines: 4,
                    ),
                    editField(
                      'Date of Birth:',
                      '${uData.dob}',
                      TextInputType.phone,
                      (date) => setState(
                        () => uData.dob = date,
                      ),
                    ),
                    editField(
                      'Local Govt. Area:',
                      '${uData.lga}',
                      TextInputType.name,
                      (local) => setState(
                        () => uData.lga = local,
                      ),
                    ),
                    editField(
                      'State of Origin:',
                      '${uData.state}',
                      TextInputType.name,
                      (state) => setState(
                        () => uData.state = state,
                      ),
                    ),
                    editField(
                      'Twitter Connect:',
                      '${uData.twt}',
                      TextInputType.name,
                      (twitter) => setState(
                        () => uData.twt = twitter,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                CvText(
                  text: 'Experience',
                  style: bodyMedium.copyWith(
                    color: kcTextColor,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                AppBox(
                  children: [
                    editField(
                      'Name of Organization:',
                      '${uData.org}',
                      TextInputType.name,
                      (orga) => setState(
                        () => uData.org = orga,
                      ),
                    ),
                    editField(
                      'Position:',
                      '${uData.exp}',
                      TextInputType.name,
                      (exp) => setState(() {
                        uData.exp = exp;
                      }),
                    ),
                    editField(
                      'End Date:',
                      '${uData.year}',
                      TextInputType.phone,
                      (year) => setState(
                        () => uData.year = year,
                      ),
                    ),
                    editField(
                      'Skills:',
                      '${uData.skill}',
                      TextInputType.name,
                      (skills) => setState(
                        () => uData.skill = skills,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                CvButton(
                  onTap: () => Navigator.pop(
                    context,
                    changes,
                  ),
                  height: height * 0.13,
                  title: 'Save Now',
                  color: kcPrimaryColor,
                  style: bodyMedium.copyWith(
                    color: kcBackgroundColor,
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
