import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio_app/ui/shared_widgets/footer_widget.dart';
import 'package:my_portfolio_app/ui/views/contact_view/contactview.dart';

import '../views/about_view/aboutview.dart';
import '../views/home_view/homeview.dart';
import '../views/project_view/projectview.dart';

class AppConstants {
  static const List<String> navBarNames = [
    'HOME',
    'ABOUT',
    'PROJECTS',
    'CONTACT',
  ];

  static const List<IconData> navBarIcons = [
    CupertinoIcons.home,
    CupertinoIcons.person,
    CupertinoIcons.folder,
    CupertinoIcons.phone
  ];

  static const List<Icon> socialIcons = [
    Icon(FontAwesomeIcons.linkedin, color: Colors.blue),
    Icon(FontAwesomeIcons.github, color: Colors.black),
    Icon(FontAwesomeIcons.solidEnvelope, color: Colors.red),
    Icon(FontAwesomeIcons.whatsapp, color: Colors.green),
  ];

  static const List<String> socialLinks = [
    "https://www.linkedin.com/in/parth-s-023123287",
    "https://github.com/iamparthsanghani",
    "mailto:parthsanghani07@gmail.com",
    "https://wa.me/+917048716146"
  ];

  //contact list

  static const List<Map<String, dynamic>> contactList = [
    {
      'icon': Icons.email_outlined,
      'hoverIcon': Icons.email_rounded,
      'title': 'Email',
      'subTitle': 'parthsanghani07@gmail.com'
    },
    {
      'icon': Icons.phone_outlined,
      'hoverIcon': Icons.phone_sharp,
      'title': 'Phone',
      'subTitle': '(+91) 7048716146'
    },
    {
      'icon': Icons.location_on_outlined,
      'hoverIcon': Icons.location_on_sharp,
      'title': 'Location',
      'subTitle': 'Surat, Gujarat, India'
    }
  ];

  static List<Widget> views = [
    const HomeView(),
    const AboutView(),
    const ProjectView(),
    const ContactView(),
    const Footer()
  ];

  // resume link
  static const String resumeLink =
      'https://drive.google.com/file/d/1Z8BqKNiPWzyRX_1M3QDKLVurn7Te-yLd/view?usp=sharing';
}
