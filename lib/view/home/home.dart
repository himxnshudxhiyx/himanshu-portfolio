import 'package:flutter/material.dart';
import 'package:my_portfolio/view/about_us/aboutUs.dart';
import 'package:my_portfolio/view/certifications/certifications.dart';
import 'package:my_portfolio/view/intro/introduction.dart';
import 'package:my_portfolio/view/main/main_view.dart';
import 'package:my_portfolio/view/projects/project_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MainView(pages: [
      const Introduction(),
      ProjectsView(),
      Certifications(),
      const AboutUs(),
    ]);
  }
}
