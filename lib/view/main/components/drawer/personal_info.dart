import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: defaultPadding / 2,
        ),
        AreaInfoText(
          title: 'Contact',
          text: '+918930144909',
        ),
        AreaInfoText(title: 'Email', text: 'himanshu.44909@gmail.com'),
        AreaInfoText(title: 'LinkedIn', text: '@himanshu-dahiya-04470b155'),
        AreaInfoText(title: 'Github', text: '@himxnshudxhiyx'),
        SizedBox(
          height: defaultPadding,
        ),
        Text(
          'Skills',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
