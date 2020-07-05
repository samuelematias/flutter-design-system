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
      title: 'Introduction',
      subtitle: 'A brief introduction to the design system.',
    ),
    Routes(
      route: ColorSchemePage.route,
      page: ColorSchemePage(),
      icon: Ionicons.md_color_palette,
      title: 'Color Scheme',
      subtitle: 'The UI Colors of the design system.',
    ),
    Routes(
      route: TypographyPage.route,
      page: TypographyPage(),
      icon: FontAwesome.text_height,
      title: 'Typography',
      subtitle: 'The Fonts, Fonts Sizes and Fonts Family of the design system.',
    ),
    Routes(
      route: ButtonsPage.route,
      page: ButtonsPage(),
      icon: Foundation.download,
      title: 'Buttons',
      subtitle: 'The Buttons of the Components system.',
    ),
    Routes(
      route: LoadingPage.route,
      page: LoadingPage(),
      icon: AntDesign.loading1,
      title: 'Loading',
      subtitle: 'The Loading of the Components system.',
    ),
  ];
}
