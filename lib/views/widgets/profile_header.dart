import 'package:flutter/material.dart';

import '../../components/app_text.dart';
import '../../components/styles.dart';
import '../../shared/app_colors.dart';

class ProfileHeader extends StatelessWidget {
  final String? image;
  final String? fullName;
  final String? email;
  final String? gitHub;
  final String? slack;
  final String? phone;

  const ProfileHeader(
      {super.key,
      this.image,
      this.fullName,
      this.email,
      this.gitHub,
      this.slack,
      this.phone});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          maxRadius: height * 0.07,
          backgroundImage: AssetImage(
            '$image',
          ),
        ),
        CvText.bodyLarge(
          '$fullName',
          true,
          color: kcTextColor,
        ),
        CvText(
          text: '$email',
          style: titleSmall.copyWith(
            color: kcPrimaryColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        CvText(
          text: '$gitHub',
          style: titleSmall.copyWith(
            color: kcTextColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CvText(
              text: 'Slack: $slack',
              style: titleSmall.copyWith(
                color: kcTextColor,
                fontSize: 13,
              ),
            ),
            SizedBox(
              width: width * 0.02,
            ),
            CvText(
              text: '+234 $phone',
              style: titleSmall.copyWith(
                fontSize: 13,
                color: kcTextColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ProfileHeaderLandscape extends StatelessWidget {
  final String? image;
  final String? fullName;
  final String? email;
  final String? gitHub;
  final String? slack;
  final String? phone;

  const ProfileHeaderLandscape(
      {super.key,
      this.image,
      this.fullName,
      this.email,
      this.gitHub,
      this.slack,
      this.phone});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          maxRadius: height * 0.22,
          backgroundImage: AssetImage(
            '$image',
          ),
        ),
        CvText.bodyLarge(
          '$fullName',
          true,
          color: kcTextColor,
        ),
        CvText(
          text: '$email',
          style: titleSmall.copyWith(
            color: kcPrimaryColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        CvText(
          text: '$gitHub',
          style: titleSmall.copyWith(
            color: kcTextColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CvText(
              text: 'Slack: $slack',
              style: titleSmall.copyWith(
                color: kcTextColor,
                fontSize: 13,
              ),
            ),
            SizedBox(
              width: width * 0.02,
            ),
            CvText(
              text: '+234 $phone',
              style: titleSmall.copyWith(
                fontSize: 13,
                color: kcTextColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
