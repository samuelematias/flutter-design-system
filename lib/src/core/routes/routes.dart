import 'package:designsystem/src/ui/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Routes {
  final String route;
  final Widget page;
  final IconData icon;
  final String title;
  final String subtitle;

  Routes({
    @required this.route,
    @required this.page,
    @required this.icon,
    @required this.title,
    @required this.subtitle,
  });
}

List<Routes> routes() {
  return [
    Routes(
      route: IntroductionPage.route,
      page: IntroductionPage(),
      icon: AntDesign.book,
      title: 'introduction',
      subtitle: 'introductionAbout',
    ),
    Routes(
      route: ColorSchemePage.route,
      page: ColorSchemePage(),
      icon: Ionicons.md_color_palette,
      title: 'colorScheme',
      subtitle: 'colorSchemeAbout',
    ),
    Routes(
      route: TypographyPage.route,
      page: TypographyPage(),
      icon: FontAwesome.text_height,
      title: 'typography',
      subtitle: 'typographyAbout',
    ),
    Routes(
      route: ButtonsPage.route,
      page: ButtonsPage(),
      icon: Foundation.download,
      title: 'buttons',
      subtitle: 'buttonsAbout',
    ),
    Routes(
      route: LoadingPage.route,
      page: LoadingPage(),
      icon: AntDesign.loading1,
      title: 'loading',
      subtitle: 'loadingAbout',
    ),
  ];
}
