import 'package:designsystem/src/ui/widgets/widgets.dart';
import 'package:designsystem/src/core/i18n/i18n.dart';
import 'package:designsystem/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

class IntroductionPage extends StatelessWidget {
  static const String route = '/overview/introduction';

  final bool hideSwitchMode;

  const IntroductionPage({
    this.hideSwitchMode = false,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      pageTitle: 'introduction'.i18n(),
      hideSwitchMode: hideSwitchMode,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText('introduction'.i18n()).h1(),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: SelectableText(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum')
                  .h2(style: TextStyle(fontWeight: FontWeight.w200)),
            ),
          ],
        ),
      ),
    );
  }
}
