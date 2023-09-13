import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../views/widgets/app_bar.dart';
import '../views/widgets/profile_header.dart';
import '../models/user_data.dart';
import '../components/app_text.dart';
import '../components/styles.dart';
import '../shared/app_colors.dart';
import '../views/edit_view.dart';
import '../components/app_layouts.dart';
import '../utils/app_arguments.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final user = UserData.userData;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    void passData() async {
      List<String?> passed = await Navigator.push(
        context,
        CupertinoPageRoute(
            builder: (_) => const EditView(),
            settings: RouteSettings(
              arguments: EditArgs(
                mail: user.email,
                dob: user.dob,
                obj: user.objectives,
                org: user.organization,
                exp: user.experience,
                name: user.fullName,
                slack: user.slackName,
                skill: user.skills,
                ref: user.reference,
                twt: user.twitter,
                year: user.year,
                phone: user.phone,
                state: user.state,
                github: user.githubLink,
                lga: user.lga,
              ),
            )),
      );

      setState(() {
        user.fullName = passed[0]!;
        user.email = passed[1];
        user.githubLink = passed[2]!;
        user.slackName = passed[3]!;
        user.phone = passed[4]!;
        user.objectives = passed[5]!;
        user.dob = passed[6]!;
        user.lga = passed[7];
        user.state = passed[8];
        user.twitter = passed[9]!;
        user.organization = passed[10]!;
        user.experience = passed[11]!;
        user.year = passed[12]!;
        user.skills = passed[13];
      });
    }

    return ScreenLayout(
      mobile: OrientationLayout(
        portrait: Scaffold(
          appBar: cvAppBar(
            context,
            'Edit CV',
            Icons.edit,
            passData,
          ),
          backgroundColor: kcBackgroundColor,
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.045,
            ),
            child: ListView(
              children: [
                SizedBox(
                  height: height * 0.01,
                ),
                ProfileHeader(
                  image: user.userImage,
                  slack: user.slackName,
                  gitHub: user.githubLink,
                  fullName: user.fullName,
                  email: user.email,
                  phone: user.phone,
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                CvText(
                  text: 'Objective',
                  style: bodyMedium.copyWith(
                    color: kcTextColor,
                  ),
                ),
                CvText(
                  text: '${user.objectives}',
                  style: bodySmall.copyWith(
                    color: kcTextColor,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                CvText(
                  text: 'Personal Bio',
                  style: bodyMedium.copyWith(
                    color: kcTextColor,
                  ),
                ),
                CvText(
                  text: 'Date of birth: ${user.dob}',
                  style: bodySmall,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                CvText(
                  text: 'Local Govt. Area: ${user.lga}',
                  style: bodySmall,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                CvText(
                  text: 'State: ${user.state}',
                  style: bodySmall,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                CvText(
                  text: 'Twitter: ${user.twitter}',
                  style: bodySmall,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                const CvText(
                  text: 'Experience',
                  style: bodyMedium,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.work_history_outlined,
                    color: kcPrimaryColor,
                  ),
                  title: CvText(
                    text: '${user.organization}',
                    style: bodyMedium,
                  ),
                  subtitle: CvText(
                    text: '${user.experience}',
                    style: bodySmall,
                  ),
                  trailing: CvText(
                    text: '${user.year}',
                    style: bodyMedium,
                  ),
                ),
                const CvText(
                  text: 'Skills',
                  style: bodyMedium,
                ),
                CvText(
                  text: '${user.skills}',
                  style: bodySmall,
                ),
              ],
            ),
          ),
        ),
        landscape: Scaffold(
          appBar: cvAppBar(context, 'Edit CV', Icons.edit, passData),
          backgroundColor: kcBackgroundColor,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.03),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileHeaderLandscape(
                  image: user.userImage,
                  slack: user.slackName,
                  gitHub: user.githubLink,
                  fullName: user.fullName,
                  email: user.email,
                  phone: user.phone,
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Expanded(
                  child: ListView(
                    children: [
                      CvText(
                        text: 'Objective',
                        style: bodyMedium.copyWith(
                          color: kcTextColor,
                        ),
                      ),
                      CvText(
                        text: '${user.objectives}',
                        style: bodySmall.copyWith(
                          color: kcTextColor,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      CvText(
                        text: 'Personal Bio',
                        style: bodyMedium.copyWith(
                          color: kcTextColor,
                        ),
                      ),
                      CvText(
                        text: 'Date of birth: ${user.dob}',
                        style: bodySmall,
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      CvText(
                        text: 'Local Govt. Area: ${user.lga}',
                        style: bodySmall,
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      CvText(
                        text: 'State: ${user.state}',
                        style: bodySmall,
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      CvText(
                        text: 'Twitter: ${user.twitter}',
                        style: bodySmall,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      const CvText(
                        text: 'Experience',
                        style: bodyMedium,
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.work_history_outlined,
                          color: kcPrimaryColor,
                        ),
                        title: CvText(
                          text: '${user.organization}',
                          style: bodyMedium,
                        ),
                        subtitle: CvText(
                          text: '${user.experience}',
                          style: bodySmall,
                        ),
                        trailing: CvText(
                          text: '${user.year}',
                          style: bodyMedium,
                        ),
                      ),
                      const CvText(
                        text: 'Skills',
                        style: bodyMedium,
                      ),
                      CvText(
                        text: '${user.skills}',
                        style: bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
